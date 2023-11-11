import pandas as pd
import matplotlib.pyplot as plt
import os
import sys
from PIL import Image
import cv2

def plot_Energy(name_xlsx,type=''):
    if type=='IRC':
        xlabel_str='Reaction coordinate [bohr amu$^{1/2}$]'
    elif type=='MD':
        xlabel_str='Frame'
    else:
        xlabel_str='Conformer'
    df = pd.read_excel(name_xlsx, sheet_name='Energy',index_col=0)
    fname = name_xlsx.split('/')[-1]
    name = os.path.splitext(fname)[0]
    
    pos = df['pos'].tolist()
    Energy = df['Energy'].tolist()
    
    for i in range(len(pos)):
        plt.rc('font',family='Times New Roman',size=8)
        #Energy
        plt.figure(figsize=(4, 2))
        plt.plot(pos,Energy,color='black',linewidth=1.0)
        plt.scatter(pos[i],Energy[i],color='red')
        plt.ylabel('$\Delta E$ (kcal/mol)')
        plt.xlabel(xlabel_str)
        plt.title('Electronic Energy')
        plt.tight_layout()
        
        plt.savefig(name+'Energy_%d.png'%i,format='png', dpi=600, bbox_inches = 'tight')
        plt.close()
        
    if 'Strain M1' in df.columns:
        #Strain M1
        Strain_M1 = df['Strain M1'].tolist()
        toplist, bottomlist = [], []
        for i in range(len(pos)):
            plt.figure(figsize=(4, 2))
            plt.plot(pos,Strain_M1,color='black',linewidth=1.0)
            plt.scatter(pos[i],Strain_M1[i],color='red')
            plt.ylabel('$\Delta E$ (kcal/mol)')
            plt.xlabel(xlabel_str)
            plt.title('Strain Energy')
            plt.tight_layout()
            plt.savefig(name+'Strain_M1_%d.png'%i,format='png', dpi=600,bbox_inches = 'tight')
            plt.close()
            
            #get top bottom
            toptmp, bottomtmp = get_top_bottom('M1_frag_%d.png'%i)
            toplist.append(toptmp)
            bottomlist.append(bottomtmp)
        
        top = min(toplist)
        bottom = max(bottomlist)
        
        for i in range(len(pos)):
            combine_3images(name+'Energy_%d.png'%i,name+'Strain_M1_%d.png'%i,'M1_frag_%d.png'%i,name+'_M1_%d'%i,top,bottom)
        png2mov('Merge_'+name+'_M1',len(pos))   
        
    if 'Strain M2' in df.columns:
        #Strain M2
        Strain_M2 = df['Strain M2'].tolist()
        for i in range(len(pos)):
            plt.figure(figsize=(4, 2))
            plt.plot(pos,Strain_M2,color='black',linewidth=1.0)
            plt.scatter(pos[i],Strain_M2[i],color='red')
            plt.ylabel('$\Delta E$ (kcal/mol)')
            plt.xlabel(xlabel_str)
            plt.title('Strain Energy')
            plt.tight_layout()
            plt.savefig(name+'Strain_M2_%d.png'%i,format='png', dpi=600,bbox_inches = 'tight')
            plt.close()
            
            #get top bottom
            toptmp, bottomtmp = get_top_bottom('M2_total_%d.png'%i)
            toplist.append(toptmp)
            bottomlist.append(bottomtmp)
        
        top = min(toplist)
        bottom = max(bottomlist)
        
        for i in range(len(pos)):
            combine_3images(name+'Energy_%d.png'%i,name+'Strain_M2_%d.png'%i,'M2_total_%d.png'%i,name+'_M2_%d'%i,top,bottom)
        png2mov('Merge_'+name+'_M2',len(pos))       
    
    if 'Strain M3' in df.columns:
        #Strain M3
        Strain_M3 = df['Strain M3'].tolist()
        for i in range(len(pos)):
            plt.figure(figsize=(4, 2))
            plt.plot(pos,Strain_M3,color='black',linewidth=1.0)
            plt.scatter(pos[i],Strain_M3[i],color='red')
            plt.ylabel('$\Delta E$ (kcal/mol)')
            plt.xlabel(xlabel_str)
            plt.title('Strain Energy')
            plt.tight_layout()
            plt.savefig(name+'Strain_M3_%d.png'%i,format='png', dpi=600,bbox_inches = 'tight')
            plt.close()
            
            #get top bottom
            toptmp, bottomtmp = get_top_bottom('M3_total_%d.png'%i)
            toplist.append(toptmp)
            bottomlist.append(bottomtmp)
        
        top = min(toplist)
        bottom = max(bottomlist)
        
        for i in range(len(pos)):
            combine_3images(name+'Energy_%d.png'%i,name+'Strain_M3_%d.png'%i,'M3_total_%d.png'%i,name+'_M3_%d'%i,top,bottom)
        
        png2mov('Merge_'+name+'_M3',len(pos))   


def png2mov(name,number):

    # 输出视频文件名
    video_name = name+'.mp4'
    # 视频帧率 (每秒显示的帧数)
    fps = 24.0
    
    image_files = [name+'_%d.png'%i for i in range(number)]

    # 读取首张图像，获取图像宽度和高度作为视频参数
    frame = cv2.imread(image_files[0])
    height, width, _ = frame.shape

    # 创建视频编写器
    fourcc = cv2.VideoWriter_fourcc(*'mp4v')
    video = cv2.VideoWriter(video_name, fourcc, fps, (width, height))

    # 遍历图像列表，将每张图像写入视频
    #print(image_files)
    for image_file in image_files:
        frame = cv2.imread(image_file)
        video.write(frame)

    # 释放视频编写器和资源
    video.release()
    cv2.destroyAllWindows()

def image_crop(imag, top_row=None, bottom_row=None):

    # Open the image
    image_path = imag
    image = Image.open(image_path)

    # Convert the image to RGBA mode (if not already)
    if image.mode != "RGBA":
        image = image.convert("RGBA")

    # Get the image dimensions
    width, height = image.size

    # Find the top and bottom non-transparent rows
    if top_row == None or bottom_row == None:
    
        for y in range(height):
            row = image.crop((0, y, width, y + 1))
            if row.getbbox():
                top_row = y
                break

        for y in range(height - 1, -1, -1):
            row = image.crop((0, y, width, y + 1))
            if row.getbbox():
                bottom_row = y
                break

    # Crop the image to remove transparent areas
    image = image.crop((0, top_row, width, bottom_row + 1))

    return image

def get_top_bottom(imag):

    # Open the image
    image_path = imag
    image = Image.open(image_path)

    # Convert the image to RGBA mode (if not already)
    if image.mode != "RGBA":
        image = image.convert("RGBA")

    # Get the image dimensions
    width, height = image.size

    # Find the top and bottom non-transparent rows

    for y in range(height):
        row = image.crop((0, y, width, y + 1))
        if row.getbbox():
            top_row = y
            break

    for y in range(height - 1, -1, -1):
        row = image.crop((0, y, width, y + 1))
        if row.getbbox():
            bottom_row = y
            break

    return top_row, bottom_row
                       
def combine_3images(image1, image2, imageb, name='xx',top=None, bottom=None):
    
    big_image = image_crop(imageb,top,bottom)
    small_image1 = Image.open(image1)
    small_image2 = Image.open(image2)

    big_width, big_height = big_image.size
    
    small_width, small_height = small_image1.size
    
    new_small_width = big_width // 2
    
    new_small_height = int(small_height * (new_small_width / small_width))
    
    # 缩放两张小图片
    small_image1_resized = small_image1.resize((new_small_width, new_small_height))
    small_image2_resized = small_image2.resize((new_small_width, new_small_height))
    
    
    new_img = Image.new('RGB', (big_width, new_small_height+big_height), color='white')
    
    new_img.paste(small_image1_resized,(0,0))
    new_img.paste(small_image2_resized,(new_small_width,0))
    new_img.paste(big_image,(0,new_small_height))
     
    # 保存合并后的图片
    new_img.save('Merge_'+name+'.png')

def run_plot():
    if len(sys.argv) == 2:
        xlsxf = sys.argv[1]
        plot_Energy(xlsxf)
    elif len(sys.argv) == 3:
        xlsxf = sys.argv[1]
        type = sys.argv[2]
        plot_Energy(xlsxf,type)
    else:
        print('giving enerngy_xlsx type(IRC/MD)')
        print('enerngy_xlsx file (including pos, Energy, Strain M1/M2/M3 columns)')
    

