from browser import pyvista as pv

filename = 'counter.stl'
mesh = pv.read(filename)
cpos = mesh.plot()