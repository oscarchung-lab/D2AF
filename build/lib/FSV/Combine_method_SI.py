from PIL import Image, ImageDraw, ImageFont
import os
import math
import sys
#method_dirs [g16 gfn2-xtb ani-2x aiqm1]
#methods [DFT GFN2-xTB ANI-2x AIQM1]
#fignames M1_M2 [M1_frag M2_total M2_bond M2_angle]
#fignames M3 [M3_total M3_bond M3_angle M3_frag]
method_space = 150
type_space = 500
img_width = 1200
img_height = 1200
font = ImageFont.truetype('timesbd.ttf', 99)

def Combine_Image_methods(fignames,figlabels,method_dirs,methodlabels,name='XX'):
    numdirs = len(method_dirs)
    numrows = len(fignames)
    new_img = Image.new('RGB', (img_width*numdirs + type_space, img_height*numrows + method_space), (255, 255, 255))
    current_dir = os.getcwd()
    
    for i, dirtmp in enumerate(method_dirs):
        for j, figtmp in enumerate(fignames):
            img = Image.open(os.path.join(current_dir,dirtmp,'pymol',figtmp+'.png'))

            new_img.paste(img, (type_space+i * img_width, method_space+j * img_height))
    # 创建一个新的画布
    draw = ImageDraw.Draw(new_img)
    
    # 添加行头文字
    for i, figlabel in enumerate(figlabels):
        draw.text((10, (i+0.4) * img_height+method_space), figlabel, font=font, fill=(0, 0, 0))

    # 添加列名文字
    for j, methodlabel in enumerate(methodlabels):
        draw.text(((j+0.4) * img_width+type_space, 10), methodlabel, font=font, fill=(0, 0, 0))
    
    # 绘制表格
    for i in range(numrows):
        draw.line((0, method_space + i * img_height, type_space+img_width*numdirs, method_space+i * img_height), fill=(0, 0, 0), width=5)
    for j in range(numdirs):
        draw.line((type_space + j * img_width, 0, type_space + j * img_width, method_space+img_height*numrows), fill=(0, 0, 0), width=5)

    new_img.save(name+'.png')


def image_compose_mn(rows,cols,name,fignames,figlabel=None):
    IMAGE_ROW = rows # 图片间隔，也就是合并成一张图后，一共有几行
    IMAGE_COLUMN = cols # 图片间隔，也就是合并成一张图后，一共有几列
    
    IMAGE_SAVE_PATH = name+'.png'
    to_image = Image.new('RGBA', (IMAGE_COLUMN * img_width, IMAGE_ROW * img_height))
    draw = ImageDraw.Draw(to_image)
    num = 0

    for i,file in enumerate(fignames):
        imaname = file+'.png'
        if os.path.exists(imaname):
            
            y = math.floor(num/cols)
            x = num%cols
            
            from_image = Image.open(imaname)
            to_image.paste(from_image, (x * img_width, y * img_height))
            draw.text((x * img_width, y * img_height),figlabel[i],font = font,fill=(0,0,0) )
            num = num + 1
    
    return to_image.save(IMAGE_SAVE_PATH)
    
def run():
    
    method_dirs = ['g16','gfn2-xtb','ani-2x','aiqm1']
    method_labels = ['DFT','GFN2-xTB','ANI-2x','AIQM1']
    
    method_ds = []
    method_ls = []
    for i, method_d in enumerate(method_dirs):
        if os.path.exists(method_d):
            method_ds.append(method_d)
            method_ls.append(method_labels[i])
    
    current_dir = os.getcwd()
        
    if len(sys.argv) == 1:
        figns = ['M1_frag', 'M2_total', 'M2_bond', 'M2_angle']
    
        figls = ['    M1\n fragment', 'M2 total', 'M2 bond', 'M2 angle']
        
        figns_M3 = ['M3_total', 'M3_bond', 'M3_angle', 'M3_frag']
        
        figls_M3 = ['M3 total', 'M3 bond', 'M3 angle', '    M3\n fragment']
        sys_figns = [os.path.join(current_dir,method_ds[0],'pymol','M1_frag_show'),os.path.join(current_dir,method_ds[0],'pymol','M2_bond_delta')]
        sys_figls = ['(a) M1 fragments','(b) bond length delta']
                
        image_compose_mn(1,2,'sys_scheme',fignames=sys_figns,figlabel=sys_figls)
        
        Combine_Image_methods(figns,figls,method_ds,method_ls,'M1_M2')

        if os.path.exists(os.path.join(current_dir,method_ds[0],'pymol','M3_total.png')):
            Combine_Image_methods(figns_M3,figls_M3,method_ds,method_ls,'M3')
    elif len(sys.argv) == 2 or len(sys.argv) == 3:
        orderlist = ['(a) ','(b) ','(c) ','(d) ','(e) ','(f) ','(g) ','(h) ','(i) ','(j) ']
        framestr = sys.argv[1].split()
        
        frameslist = [int(x) for x in framestr]
        if len(sys.argv) == 3:
            frameslabestr = sys.argv[2].split()
        else:
            frameslabestr = framestr
        
        sys_figns = [os.path.join(current_dir,method_ds[0],'pymol','M1_frag_show_0')]
        
        sys_figlstmp = ['M1 fragments']
        for i, frameid in enumerate(frameslist):
            sys_figns.append(os.path.join(current_dir,method_ds[0],'pymol','M2_bond_delta_%d'%frameid))
            sys_figlstmp.append('bond length delta %s'%frameslabestr[i])
        sys_figls = [orderlist[i]+sys_figlstmp[i] for i in range(len(sys_figlstmp))]
        
        image_compose_mn(1,len(framestr)+1,'sys_scheme',fignames=sys_figns,figlabel=sys_figls)
        
        figns_M1 = ['M1_frag_%d'%frameid for frameid in frameslist]
        figls_M1 = ['M1\n \n%s'%frameslabel for frameslabel in frameslabestr]
        
        Combine_Image_methods(figns_M1,figls_M1,method_ds,method_ls,'M1')
       
        if os.path.exists(os.path.join(current_dir,method_ds[0],'pymol','M2_total_0.png')):
            figns_M2 = ['M2_total_%d'%frameid for frameid in frameslist]
            figns_M2.extend(['M2_bond_%d'%frameid for frameid in frameslist])
            figns_M2.extend(['M2_angle_%d'%frameid for frameid in frameslist])
            
            figls_M2 = ['M2 total\n\n%s'%frameslabel for frameslabel in frameslabestr]
            figls_M2.extend(['M2 bond\n\n%s'%frameslabel for frameslabel in frameslabestr])
            figls_M2.extend(['M2 angle\n\n%s'%frameslabel for frameslabel in frameslabestr])
            
            Combine_Image_methods(figns_M2,figls_M2,method_ds,method_ls,'M2')
            
        if os.path.exists(os.path.join(current_dir,method_ds[0],'pymol','M3_total_0.png')):
            figns_M3 = ['M3_total_%d'%frameid for frameid in frameslist]
            figns_M3.extend(['M3_bond_%d'%frameid for frameid in frameslist])
            figns_M3.extend(['M3_angle_%d'%frameid for frameid in frameslist])
            figns_M3.extend(['M3_frag_%d'%frameid for frameid in frameslist])
            
            figls_M3 = ['M3 total\n \n%s'%frameslabel for frameslabel in frameslabestr]
            figls_M3.extend(['M3 bond\n \n%s'%frameslabel for frameslabel in frameslabestr])
            figls_M3.extend(['M3 angle\n \n%s'%frameslabel for frameslabel in frameslabestr])
            figls_M3.extend(['M3 frag\n \n%s'%frameslabel for frameslabel in frameslabestr])
            
            Combine_Image_methods(figns_M3,figls_M3,method_ds,method_ls,'M3')
        
if __name__ == '__main__':      
    run()
        