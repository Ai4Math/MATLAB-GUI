### THIS ONLY WORK WITH THE SETUP DOWNLOADED FROM THIS GITHUB REPO, IF YOU ARE STARTING FROM SCRATCH, YOU MAY NEED TO CUSTOMIZED THE TABLE AND BUTTON NAME AND SOME STUFF

# Linear Algebra App (In Progress)

# TODO: Desgin and Implement Function

### - Check for the lastest version to download (just like git pull)
### - Update your version when you are done working (just like git push)
### - Text in the Slack team to notify people

## 1. How to Implement New Function
1. Download the **lastest** mlapp file and open it in MATLAB App Designer
2. Pick a feature from Prof. Li codes in [MATLAB-files](./MATLAB-files)
3. In the app design, work on it on the new tab, or same tab if it is using the matrix input by creating a button and a callback function.
  - Drag a button from the side
  - Right click button --> Add callback function
  - Add code corresponding to the function
5. Save the mlapp version on the top left corner.
6. Upload when you are finished appName_yourName_dayAndTime_version.mlapp, for example `linear_Huy_March12-22-30pm_v2.mlapp` if I work on `linear_Huy_March12-10-30am_v1.mlapp`

# 2. How to desgin
- Just Drag and edit the appearance on the right menu in Desgin View
- Explore the common stuff from the left in the desgin view
- Just put the html file in the same directory and on the menu of the html tag, specify the filename
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/4b0a666a-24a9-4b73-8919-b8408e6f6f92)


## 2. Code Understanding 

### Get User Input - GenerateMatrix Button
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/222bd6df-d964-4c3c-8efa-a0d2b862bdc5)
- When clicking the generate button, the table will become row x col table, and the user will input the number manually.

### CheckSpan Button
![image](https://github.com/Ai4Math/MATLAB-GUI/assets/114793725/8f7e5ebe-a88b-4bf8-ab4f-4cc7ac49b669)
- Use `AugM = app.UITable.Data;` to get the users input from the table.
- The rest is Prof. Li's code since it just requires a matrix input.
- Use `app.ResultsEditField.Value = "the vector b IS IN the span of the given set of vectors";` to output the value


### CheckLinearIndep - Same with CheckSpan
