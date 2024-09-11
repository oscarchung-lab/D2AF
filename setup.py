import setuptools 

with open('README.md','r',encoding='utf-8') as f:
    long_description = f.read()
    
packages = setuptools.find_packages(exclude=["tests"])

setuptools.setup(
    name="D2AF",
    version="1.0.0",
    description="Distortion Distribution Analysis enabled by Fragmentation",
    authors="Zeyin YAN, Yunteng Liao, Lung Wa CHUNG",
    author_email="yanzy@sustech.edu.cn",
    long_description=long_description,
    long_description_content_type="text/markdown",
    python_requires="~=3.9",
    url = "",
    packages=["D2AF"],
    include_package_data=True,
    #install_requires = ['argparse','numpy','openbabel','itertools','copy','pandas','time','re','torch','torchani','xtb-python'],
    entry_points = {
        'console_scripts' : ['D2AF = D2AF.Strain_energy:run',
                             'Combine_fig_MS = D2AF.Combine_fig_MS:run',
                             'Combine_fig_ppt = D2AF.Combine_fig_ppt:run',
                             'pml_str = D2AF.pml_str:main',
                             'write_run_pml = D2AF.write_run_pml:write',
                             'multi_mov = D2AF.multi_mov:run_plot',
                             'Combine_multi = D2AF.Combine_multi_conf:run',
                             'Combine_method = D2AF.Combine_method_SI:run',
                             'autofragment = D2AF.autofragment:run',
                             'atompair = D2AF.atompair:run',
                             'check_dihedral = D2AF.inputs:check_dihedral']
    }
)

