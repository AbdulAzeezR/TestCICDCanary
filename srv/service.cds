using { com.sap.bs as my } from '../db/schema';

@path : '/service/testcicdcanarySvcs'
service productserviceService
{
    entity Products as
        projection on my.Products;

    entity Categories as
        projection on my.Categories;
}

annotate productserviceService with @requires :
[
    'authenticated-user'
];
