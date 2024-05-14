# Linear Algebra App (In Progress)  

## Demo Video: ...


## TODO: Desgin and Implement Function
#### Done: CheckSpan, Check Linearly Independent, All in Comsubspace.m, Rows operations (Dswaprow, Dmulrow, Daddrow), RREF, Solve Unique Solutions.
#### Not Done: Ploting stuff; Determinant stuff (CramRule, FindDet); MLX Files: Span + Linear Trans + Subspace and Plot, EigenValue and EigenVector.
#### Classification: Matrix outputs text (good), Matrix outputs Matrix (good),  Matrix outputs plots (hard one, do later)
#### Check for input exceptions later ...

<br>

## Download and Open the App


### Usable and but NOT Editable version

1. Download the [`linear_app_package_v7.mlappinstall`](./linear_app_package_v7.mlappinstall) and double click to run.

### Usable and Editable version

1. **Download the Latest MATLAB Version:**
   - Download the latest `.mlapp` file from the [`./mlapp_design`](./mlapp_design) folder.

2. **Open the App:**
   - Double-click the downloaded `.mlapp` file to open it in MATLAB.
   - The app will open in the MATLAB App Designer environment.

<br>

## General Steps

1. **Input Matrix Dimensions:**
   - Enter the number of rows in the "Rows" field.
   - Enter the number of columns in the "Cols" field.
   - Click the `GenerateMatrix` button to create a zero matrix of the specified dimensions. This will populate the matrix display area with editable cells.

#### Example: Initialize a 3x3 Matrix with all 0s
![Use of Generate Matrix](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/49c89786-0ee6-47c7-80ad-02d88e372bc3)


2. **Enter Matrix Elements:**
   - Manually enter the elements of the matrix in the editable cells under "Column 1", "Column 2", etc.
   - Invalid input will be appeared as NaN, and therefore the button cannot be used. 
   - If applicable, enter the elements of the vector in the `Vector b` column.

#### Example: Manually enter elements in the matrix
![Use of Enter Matrix](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/31208f28-3ed2-49dc-8665-ad0e2a8027dd)


## Performing Operations

### Row Operations
- **Swap Rows:**
  - Enter the indices of the rows to swap in the "RowSwap1" and "RowSwap2" fields.
  - Click the `SwapRow` button.
  - The results will be appeared in the original matrix above.

#### Example: Swap row 1 with row 2
![Use of Swap Row](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/d8479e98-8fa8-44fc-bd35-85c2d4d5e64b)


- **Multiply Row:**
  - Enter the index of the row to multiply in the "RowToMultiply" field.
  - Enter the multiplication factor in the "MultiplyFactor" field.
  - Click the `MultiplyRow` button.
  - The results will be appeared in the original matrix above
 
#### Example: Multiple Row 2 with a factor of 2
![Use of Multiply Row](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/944c95b1-7a1e-4637-bf65-f046cc4edc2e)

- **Add Multiple of Source Row to Destination Row:**
  - Enter the index of the source row in the "SourceRow" field.
  - Enter the index of the destination row in the "DestinationRow" field.
  - Enter the multiplication factor in the "MultiplyFactor" field.
  - Click the `AddMultipleOfSourceRowToDestinationRow` button.
  - The results will be appeared in the original matrix above

#### Example: Add 2*Row1 to Row2
![Use of AddMulRow](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/6ea36b11-fd12-4c2b-be1f-765b486a59ee)


### Matrix and Vector Operations
- **Reduced Row Echelon Form (RREF):**
  - Click the `RREF` button to transform the matrix to its reduced row echelon form.

- **Solve Augmented Matrix:**
  - Enter the elements of the vector in the `Vector b` column.
  - Click the `SolveAugementedMatrix` button to solve the system of linear equations represented by the augmented matrix.
  - This can only solve for unique solution, updates are needed for free varibables and infinite solutions. 

- **Check Span:**
  - Enter the elements of the vector in the `Vector b` column.
  - Click the `CheckSpan` button to check if `Vector b` is in the span of the vector space.

- **Check Linearly Independent:**
  - Click the `CheckLinearlyIndependent` button to check if the vectors are linearly independent.

- **Find Row Space Basis:**
  - Click the `FindRowSpaceBasis` button to find the basis of the row space of the matrix.

- **Find Column Space Basis:**
  - Click the `FindColSpaceBasis` button to find the basis of the column space of the matrix.

- **Find Null Space Basis:**
  - Click the `FindNullSpaceBasis` button to find the basis of the null space of the matrix.

- **Find Rank:**
  - Click the `FindRank` button to find the rank of the matrix.

- **Find Nullity:**
  - Click the `FindNullity` button to find the nullity of the matrix.

### Plotting Vectors
- **Plot Column Vectors:**
  - `PlotColVectors` can only plot two 3D vectors after clicking on `FindColSpaceBasis`.
  - Click the `PlotColVectors` button to plot the column vectors of the matrix.
  - The plotting result will be appeared in the plotting region as a plane in R3.

- **Plot Single Vector:**
  - Enter a 3D vector in `Vector b` Column.
  - Click the `PlotSingleVector` button to plot the vector `Vector b`.
  - If the `Vector b` is in the span, it will appeared as a orange vector on the span plane. Otherwise, it will be appeared as a blue vector.
 
### Plotting Example:

#### 1. Click on `FindColSpaceBasis` to get the basis as a two 3D vectors
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/71b9de9b-c9cf-4ca5-972f-3493553c889b)

#### 2. Click on `PlotColVectors` to plot the span as a plane in R3
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/ab7ce89a-b93a-410c-b88e-2709c39830b1)

#### 3. Enter a vector in `Vector b` and click `PlotSingleVector` to plot the `Vector b` in R3, in this example, the `Vector b` is not in the span so it appeared as a blue vector, as also checked by clicking on the `CheckSpan` button.
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/0f63f33b-f116-4e04-a621-32d5af7f7f2f)

#### 4. Enter a vector in `Vector b` and click `PlotSingleVector` to plot the `Vector b` in R3, in this example, the `Vector b` is in the span so it appeared as a orange vector, as also checked by clicking on the `CheckSpan` button.
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/eee4f653-97f4-406f-8857-96040a32ccae)

## Results
- The results of the operations will appear in the "Results" section at the bottom of the app.
  - If the result is a statement, it will appear in the "Results" box.
  - If the result is a matrix, it will appear in the matrix box under the "Results" section.
- The graphical representation (if applicable) will be shown in the plot area labeled "Title".

## Additional Notes
- Ensure that the matrix and vector dimensions are correctly specified before performing any operations.
- Some operations may require additional inputs or conditions; refer to the specific button descriptions for details.

By following these instructions, you can utilize the MATLAB app to perform various linear algebra operations and visualize the results.
