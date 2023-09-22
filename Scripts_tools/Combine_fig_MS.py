from PIL import ImageFont, ImageDraw, Image
import os
import sys
import math
import glob

fontsize = 99
#combine 4 figure to one
def image_compose4(name,fignames,figlabel=None):
    IMAGE_SIZE = 1200 # 每张小图片的大小
    IMAGE_ROW = 2 # 图片间隔，也就是合并成一张图后，一共有几行
    IMAGE_COLUMN = 2 # 图片间隔，也就是合并成一张图后，一共有几列

    IMAGE_SAVE_PATH = name+'.png'
    to_image = Image.new('RGBA', (IMAGE_COLUMN * IMAGE_SIZE, IMAGE_ROW * IMAGE_SIZE))
    draw = ImageDraw.Draw(to_image)
    font = ImageFont.truetype('timesbd.ttf',fontsize)
    num = 0

    if figlabel == None:
        figlabel = ['(a)','(b)','(c)','(d)']
    for i,file in enumerate(fignames):
        imaname = file+'.png'
        if os.path.exists(imaname):
            
            y = math.floor(num/2)
            x = num%2
            
            from_image = Image.open(imaname)
            to_image.paste(from_image, (x * IMAGE_SIZE, y * IMAGE_SIZE))
            draw.text((x * IMAGE_SIZE, y * IMAGE_SIZE),figlabel[i],font = font,fill=(0,0,0) )
            num = num + 1
    
    return to_image.save(IMAGE_SAVE_PATH)

#combine 2 figure to one
def image_compose2(name,fignames,figlabel=None):
    IMAGE_SIZE = 1200 # 每张小图片的大小
    IMAGE_ROW = 1 # 图片间隔，也就是合并成一张图后，一共有几行
    IMAGE_COLUMN = 2 # 图片间隔，也就是合并成一张图后，一共有几列

    IMAGE_SAVE_PATH = name+'.png'
    to_image = Image.new('RGBA', (IMAGE_COLUMN * IMAGE_SIZE, IMAGE_ROW * IMAGE_SIZE))
    draw = ImageDraw.Draw(to_image)
    font = ImageFont.truetype('timesbd.ttf',fontsize)
    num = 0

    if figlabel == None:
        figlabel = ['(a)','(b)']
    for i,file in enumerate(fignames):
        imaname = file+'.png'
        if os.path.exists(imaname):
            y = math.floor(num/2)
            x = num%2
            
            from_image = Image.open(imaname)
            to_image.paste(from_image, (x * IMAGE_SIZE, y * IMAGE_SIZE))
            draw.text((x * IMAGE_SIZE, y * IMAGE_SIZE),figlabel[i],font = font,fill=(0,0,0) )
            num = num + 1
    
    return to_image.save(IMAGE_SAVE_PATH)

#combine 3 figure to one
def image_compose3(name,fignames,figlabel=None):
    IMAGE_SIZE = 1200 # 每张小图片的大小
    IMAGE_ROW = 1 # 图片间隔，也就是合并成一张图后，一共有几行
    IMAGE_COLUMN = 3 # 图片间隔，也就是合并成一张图后，一共有几列

    IMAGE_SAVE_PATH = name+'.png'
    to_image = Image.new('RGBA', (IMAGE_COLUMN * IMAGE_SIZE, IMAGE_ROW * IMAGE_SIZE))
    draw = ImageDraw.Draw(to_image)
    font = ImageFont.truetype('timesbd.ttf',fontsize)
    num = 0
    if figlabel == None:
        figlabel = ['(a)','(b)','(c)']
    for i,file in enumerate(fignames):
        imaname = file+'.png'
        if os.path.exists(imaname):
            
            y = math.floor(num/3)
            x = num%3
            
            from_image = Image.open(imaname)
            to_image.paste(from_image, (x * IMAGE_SIZE, y * IMAGE_SIZE))
            draw.text((x * IMAGE_SIZE, y * IMAGE_SIZE),figlabel[i],font = font,fill=(0,0,0) )
            num = num + 1
    
    return to_image.save(IMAGE_SAVE_PATH)
def run():
    pnglist = glob.glob('*.png')
    image_compose2('sys_scheme',fignames=['M1_frag_show','M2_bond_delta'])
    image_compose4('M1_M2',fignames=['M1_frag','M2_total','M2_bond','M2_angle'])
    if 'M3_total.png' in pnglist:
        image_compose4('M3',fignames=['M3_total','M3_bond','M3_angle','M3_frag'])
        
if __name__ == '__main__':
    run()
        