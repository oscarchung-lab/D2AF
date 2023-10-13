from PIL import ImageFont, ImageDraw, Image
import os
import sys
import math
import glob

fontsize = 99
figlabels = ['(a)','(b)','(c)','(d)','(e)','(f)','(g)','(h)','(i)','(j)','(k)','(l)','(m)','(n)','(o)','(p)','(q)','(r)','(s)','(t)','(u)','(v)','(w)','(x)','(y)','(z)']
def image_compose_mn(rows,cols,name,fignames,figlabel=None):
    IMAGE_SIZE = 1200 # 每张小图片的大小
    IMAGE_ROW = rows # 图片间隔，也就是合并成一张图后，一共有几行
    IMAGE_COLUMN = cols # 图片间隔，也就是合并成一张图后，一共有几列
    
    IMAGE_SAVE_PATH = name+'.png'
    to_image = Image.new('RGBA', (IMAGE_COLUMN * IMAGE_SIZE, IMAGE_ROW * IMAGE_SIZE))
    draw = ImageDraw.Draw(to_image)
    font = ImageFont.truetype('timesbd.ttf',fontsize)
    num = 0
    
    if figlabel == None:
        figlabel = figlabels[:len(fignames)
                             ]
    for i,file in enumerate(fignames):
        imaname = file+'.png'
        if os.path.exists(imaname):
            
            y = math.floor(num/cols)
            x = num%cols
            
            from_image = Image.open(imaname)
            to_image.paste(from_image, (x * IMAGE_SIZE, y * IMAGE_SIZE))
            draw.text((x * IMAGE_SIZE, y * IMAGE_SIZE),figlabel[i],font = font,fill=(0,0,0) )
            num = num + 1
    
    return to_image.save(IMAGE_SAVE_PATH)

def run():
    pnglist = glob.glob('*.png')
    if len(sys.argv) > 1:
        idlist = sys.argv[1:]
        sysfiglist = ['M1_frag_show_0']
        sysfiglist.extend(['M2_bond_delta_%s'%i for i in idlist])
        
        M1figlist = ['M1_frag_%s'%i for i in idlist]
        
        M2figlist = ['M2_total_%s'%i for i in idlist]
        M2figlist.extend(['M2_bond_%s'%i for i in idlist])
        M2figlist.extend(['M2_angle_%s'%i for i in idlist])
        
        M3figlist = ['M3_total_%s'%i for i in idlist]
        M3figlist.extend(['M3_bond_%s'%i for i in idlist])
        M3figlist.extend(['M3_angle_%s'%i for i in idlist])
        M3figlist.extend(['M3_frag_%s'%i for i in idlist])
        
        num = len(idlist)
        image_compose_mn(1,num+1,'sys_scheme',fignames=sysfiglist)
        
        image_compose_mn(1,num,'M1_all',fignames=M1figlist)
        image_compose_mn(3,num,'M2_all',fignames=M2figlist)
        
        if 'M3_total_0.png' in pnglist:
            image_compose_mn(4,num,'M3_all',fignames=M3figlist)
    else:
        print('inputs: conf_id1 conf_id2 ... conf_idn')
        print('eg: Combine_multi 149 300 #using conf 149 and conf 300')
    