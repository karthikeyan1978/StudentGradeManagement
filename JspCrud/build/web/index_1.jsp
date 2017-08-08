<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head>
        <title>Student Registration Form</title>
        <link rel="stylesheet" type="text/css">
            <script type="text/javascript">
                function validateform() {
                    /*
                     var name = document.forms["myform"].["name"].value;
                     var english = document.forms["myform"].["english"].value;
                     var maths = document.forms["myform"].["maths"].value;
                     var tamil = document.forms["myform"].["tamil"].value;
                     var science = document.forms["myform"].["science"].value;
                     var moral = document.forms["myform"].["moral"].value;
                     */
                    var name = document.myform.name.value;
                    var english = parseInt(document.myform.english.value);
                    var maths = parseInt(document.myform.maths.value);
                    var tamil = parseInt(document.myform.tamil.value);
                    var science = parseInt(document.myform.science.value);
                    var moral = parseInt(document.myform.moral.value);
                    
                    window.alert(name);

                    var total = english + maths + tamil + science + moral;

                    //calc sum
                    //document.forms["myform"].["total"].value = total;
                    //document.myform.elements("total").value = total;
                    document.myform.total.value=total;
                    alert(total);

                    //calc avg
                    var average = total / 500;
                    //document.forms["myform"].["average"].value = average;
                    //document.myform.elements("average").value = average;
                    document.myform.average.value=average;
                    alert(average);
                    
                    //calc grade
                    if (average <= 60) {
                        //document.forms["myform"].["grade"].value = "E";
                        //document.forms.elements("grade").value = "E";
                        document.myform.grade.value="E";
                        alert("Grade E");
                        return false;
                        
                    } else if (average <= 70) {
                        //document.forms["myform"].["grade"].value = "D";
                        //document.forms.elements("grade").value = "D";
                        document.myform.grade.value="D";
                        alert("Grade D");
                        return false;
                    } else if (average <= 80) {
                        //document.forms["myform"].["grade"].value = "C";
                        //document.forms.elements("grade").value = "C";
                        document.myform.grade.value="C";
                        alert("Grade C");
                        return false;
                    } else if (average <= 90) {
                        //document.forms["myform"].["grade"].value = "B";
                        //document.forms.elements("grade").value = "B";
                        document.myform.grade.value="B";
                        alert("Grade B");
                        return false;
                    } else {
                        //document.forms["myform"].["grade"].value = "A";
                        //document.forms.elements("grade").value = "A";
                        document.myform.grade.value="A";
                        alert("Grade A");
                        return false;
                    }
                }
            </script>
    </head>
    <body id="top" onload="document.myform.name.focus();">
        <form name="myform" method="post" action="" onSubmit="return validateform()" > 
            <table align="center" border="1px" width="100px">
                <tr style="color: red;">
                    <td>Student Name:</td><td><input type="text" name="name" size="45px" />*</td>
                </tr> 
                <tr style="color: red;">
                    <td>English:</td><td><input type="text" name="english" size="45px" />*</td>
                </tr>
                <tr style="color: red;">
                    <td>Maths:</td><td><input type="text" name="maths" size="45px" />*</td>
                </tr>
                <tr style="color: red;">
                    <td>Tamil:</td><td><input type="text" name="tamil" size="45px" />*</td>
                </tr>
                <tr style="color: red;">
                    <td>Science:</td><td><input type="text" name="science" size="45px" />*</td>
                </tr>
                <tr style="color: red;">
                    <td>Moral:</td><td><input type="text" name="moral" size="45px" />*</td>
                </tr>
                <tr>
                    <td>Total:</td><td><input type="text" name="total" size="45px" /></td>
                </tr>
                <tr>
                    <td>Average:</td><td><input type="text" name="average" size="45px" /></td>
                </tr>
                <tr>
                    <td>Grade:</td><td><input type="text" name="grade" size="45px" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" value="Submit"/><input type="reset" value="Reset"/></td><td>&nbsp;</td>
                </tr>



            </table>                      
        </form>              
    </body>
</html>