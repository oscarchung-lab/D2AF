import setuptools 

with open('README.md','r',encoding='utf-8') as f:
    long_description = f.read()
    
packages = setuptools.find_packages(exclude=["tests"])

setuptools.setup(
    name="FSV",
    version="1.0.13",
    description="Fragmentation-based Strain Visualisation ",
    authors="Zeyin YAN, Yunteng Liao, Lung Wa CHUNG",
    author_email="yanzy@sustech.edu.cn",
    long_description=long_description,
    long_description_content_type="text/markdown",
    python_requires="~=3.9",
    url = "",
    packages=["FSV"],
    include_package_data=True,
    #install_requires = ['argparse','numpy','openbabel','itertools','copy','pandas','time','re','torch','torchani','xtb-python'],
    entry_points = {
        'console_scripts' : ['FSV = FSV.Strain_energy:run',
                             'Combine_fig_MS = FSV.Combine_fig_MS:run',
                             'Combine_fig_ppt = FSV.Combine_fig_ppt:run',
                             'pml_str = FSV.pml_str:main',
                             'write_run_pml = FSV.write_run_pml:write',
                             'multi_mov = FSV.multi_mov:run_plot',
                             'Combine_multi = FSV.Combine_multi_conf:run',
                             'Combine_method = FSV.Combine_method_SI:run',
                             'autofragment = FSV.autofragment:run',
                             'atompair = FSV.atompair:run']
    }
)

