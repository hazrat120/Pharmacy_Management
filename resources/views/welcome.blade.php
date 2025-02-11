<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome Page</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    <h1>Welcome to Laravel</h1>
    @include('pages.home')

</body>
</html>
<x-utils-component msg='welcome to Event-Management' class="success"/>
<x-utils-component msg='welcome to Event-Management' class="error"/>
<x-utils-component msg='welcome to Event-Management' class="worning"/>
<x-utils-component msg='Hello World' class="error"/>
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
    .worning{
        color: yellow;
        background-color: rgba(255, 255, 0, 0.39);
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        padding: 10px 20px;
        margin: 30px 20px;
        border-radius:5px;
        display: inline-block;
    }
</style>