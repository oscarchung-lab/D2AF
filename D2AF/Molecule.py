import numpy as np

class Molecule:
    def __init__(self, elements, coordinates, charge=0, spin=0, name=''):
        self.elements = np.array(elements)
        self.coordinates = np.array(coordinates)
        self.charge = charge
        self.spin = spin
        self.name = name

    def get_num_atoms(self):
        return len(self.elements)
    
    def get_atom_coordinates(self,index):
        return self.coordinates[index-1][:]
    
    def add_atom(self, element, coordinate):
        self.elements = np.append(self.elements, element)
        self.coordinates = np.append(self.coordinates, coordinate).reshape(-1, 3)

    def set_charge(self,charge):
        self.charge = charge

    def set_spin(self,spin):
        self.spin = spin
    
    def set_name(self,name):
        self.name = name

