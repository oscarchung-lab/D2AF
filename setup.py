import setuptools 

with open('README.md','r',encoding='utf-8') as f:
    long_description = f.read()
    
packages = setuptools.find_packages(exclude=["tests"])

setuptools.setup(
    name="OBSV",
    version="1.0.1",
    description="ONIOM-based Strain Visualisation",
    authors="Zeyin YAN, Yunteng Liao, Lung Wa CHUNG",
    author_email="yanzy@sustech.edu.cn",
    long_description=long_description,
    long_description_content_type="text/markdown",
    python_requires="~=3.9",
    url = "",
    packages=["OBSV"],
    include_package_data=True,
    #install_requires = ['argparse','numpy','openbabel','itertools','copy','pandas','time','re','torch','torchani','xtb-python'],
    entry_points = {
        'console_scripts' : ['OBSV = OBSV.Strain_energy:run']
    }
)

