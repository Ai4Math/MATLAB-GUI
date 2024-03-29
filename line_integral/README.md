# Vector Field Plotting and Vector Line Integral GUI 
Welcome to the Vector Field Plotting and Vector Line Integral GUI, a MATLAB application designed to empower you with the ability to visualize vector fields in both 2D and 3D. This app provides an intuitive and user-friendly interface to input vector components and generate corresponding vector field plots. Additionally, this is an updated version of the vector plotting GUI, which allows users to input a parametrized curve **r(t)** = <A(t), B(t), C(t)> and evaluate the integral of **F(x,y,z)** = <X, Y, Z> along the curve. 

## How It Works
### Design Overview

The Vector Field Plotting GUI is thoughtfully designed to offer users a simple and friendly interface. Here's a breakdown of the app's components and how it functions:

#### Input Components
- At the core of the app are three input boxes, allowing you to specify the X, Y, and Z components of the vector field you wish to visualize corresponding to r = <x, y, z>. These components are the building blocks of your vector field plot.
- There are also 3 more input boxes for inputting in the A(t), B(t), and C(t) components of the parametrized curve r(t). These components are used for plotting the line.
- The Field Thickness Input is used to control how many vectors will appear on the plotting field multiplied by the number of dimensions, default to 5.

#### Plotting Range: 
- The app also provides an option to define the range of the plotting region. By default, this range spans from -3 to 3, but you can customize it to focus on specific areas of interest within the vector field. The lower bound should be smaller than the larger bound.
- This range is also considered as the lower bound and the upper bound for the line integral.

#### Color Selection: 
- There used to be a color selection feature in the vector plotting GUI app; however, to make it simpler, we decided to default the color of the vector fields to blue, and the line to red. 

#### Plot Button: 
- Once you've entered the vector components and specified the plotting range, you're ready to bring your vector field to life. Click the "Plot" button to initiate the plotting process. The result will appear on the Vector Field Plot below. The Field will be plotted in blue and the line will be plotted in red.
- The integral value will be calculated using the trapezoidal method and will also appear on the top-right box.

#### Exit and Clear Button: 
- Click the "Exit" button to close the app.
- Click the "Clear" button to clear the field. 

### 2D Plotting 
#### <img src="demo/vector_field_line_integral_2d.png" width="600"/>  
In this example, the vector field of F(x,y,z) = <y, 2x> and the curve r(t) = <-t, 1+t> from t = -1 to t = 0 are plotted in 2D, therefore, the Z-component and C(t) boxes are both left blank and after clicking the button, the result is generated as below. Notice that the field thickness is set to 5, and we are plotting in 2D dimension, therefore there will be a total of 5x5 = 25 vectors for the field. The vector line integral result is approximated to be 0.5 appearing on the top-right box. 

### 3D Plotitng
#### <img src="demo/vector_field_line_integral_3d.png" width="600"/>
In this example, the vector field of F(x,y,z) = <x, z, y> and the curve r(t) = <cos(t), t, sin(t)> from t = 0 to t = pi/2 are plotted in 3D, and the result is generated as below. Notice that the field thickness is set to 4, and we are plotting in 3D dimension, therefore there will be a total of 4x4x4 = 64 vectors for the field. The vector line integral result is approximated to be 1.07 (which is pi/2 - 1/2, but the trapezoidal method cannot give the real value) appearing on the top-right box. 

## Usage
1. **Input Vector Components and Range**:
   - You will find three input boxes: X-component, Y-component, and Z-component for the vector field F(x,y,z), and then input three more boxes: A(t), B(t), and C(t) for the curve r(t).  If you need to plot a 2D field, simply leave the Z-component and the C(t) boxes blank.
   - The range can also be modified by entering different numbers in the Lower Bound and Upper Bound boxes. Note that the Lower Bound should be less than the Larger Bound.
   - Try to input different numbers in Field Thickness to have a better visualization.

2. **Plot the Vector Field**:
   - After entering the vector components and selecting the dimension and color, simply click the "Plot" button. This action will generate the vector field and line plot based on your input, as well as give the vector line integral value.

3. **Interact with the Plot**:
   - Once the plot is generated, you can interact with it using standard MATLAB plot controls.
   - For 2D plots, you can zoom in/out, pan, and access other plot-specific options.
   - In the case of 3D plots, you can rotate and explore the field from various angles to gain a comprehensive understanding.

4. **Clear or Redo**:
   - If you wish to start over or make changes to the vector components, simply enter in inputs again and click the Plot button.

## Get Started
1. Clone or download this [MATLAB app](LineIntegralGUI__FINAL_v2.mlapp).
2. Open the app in MATLAB.
3. Follow the usage instructions mentioned above to plot the desired vector field.

## Example Use Cases
Our Vector Field Plotting GUI can be a valuable tool for a variety of applications:

- **Physics Simulations**: Use this app to visualize vector fields in physics simulations, such as electric and magnetic fields. It enables a better understanding of complex electromagnetic phenomena.

- **Engineering Applications**: Analyze fluid flow, stress distributions, or heat transfer in engineering projects. This app aids in optimizing designs and predicting outcomes.

- **Educational Tool**: This app serves as an excellent educational resource for students studying multivariable calculus and electromagnetism. It simplifies complex concepts and promotes learning through visualization.

## References
- You can access the reference raw file to understand what happens when click the plotting button by seeing [this raw file](vector_line_integral_raw_code.txt).
- More information about the vector field concepts and line integral and their applications can be found on [Wikipedia](https://en.wikipedia.org/wiki/Vector_field) and this [Line Integrals Of Vector Fields tutorial](https://tutorial.math.lamar.edu/classes/calciii/LineIntegralsVectorFields.aspx).


