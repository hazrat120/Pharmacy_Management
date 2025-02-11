
<x-utils-component msg='User login Successfully!' class="success" />
<x-utils-component msg='User signup successfully!' class="success" />
<br>
<br>
<br>
<x-utils-component msg='Error! Please try again!' class="error"/>

<h1>This is home page.</h1>
<br>
<span class="">User Signup Successfully!</span>


<style>
    .success{
        color: green;
        background-color: lightgreen;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        padding: 10px 20px;
        margin: 30px 20px;
        border-radius:5px;
        display: inline-block;
    }

    .error{
        color: red;
        background-color: rgba(255, 0, 0, 0.301);
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        padding: 10px 20px;
        margin: 30px 20px;
        border-radius:5px;
        display: inline-block;
    }
</style>