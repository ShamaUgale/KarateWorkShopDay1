Feature: Default Feature

  Scenario:
    * def headerFun = read('default-header.js')
    * def cont = headerFun('application/json')
    * print cont