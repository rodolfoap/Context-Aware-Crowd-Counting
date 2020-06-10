import json
from os.path import join
import glob

def gen_json(img_folder, output_json):
    img_list = []
    for img_path in glob.glob(join(img_folder,'*.jpg')):
        img_list.append(img_path)
    with open(output_json,'w') as f:
        json.dump(img_list,f)

if __name__ == '__main__':
    gen_json('dataset/ShanghaiTech_CrowdCountingDataset/part_B_final/train_data/images/', 'train.json')
    gen_json('dataset/ShanghaiTech_CrowdCountingDataset/part_B_final/test_data/images',   'val.json'  )
