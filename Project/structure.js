var data = [
    {
        label: "Nombre",
        type: "text",
        len: 15,
        require: "true",
        name: "name",
        },
    {
        label: "Apellido",
        type: "text",
        len: 20,
        require: "false",
        name: "lastname",
        errorMessage: "La longitud maxima del apellido es 20 caracterés",
},
    {
        label: "Contraseña",
        type: "password",
        require: "true",
        name: "password",
},   {
        label: "Edad",
        type: "number",
        max: 100,
        min: 1,
        require: "true",
        name: "age",
        errorMessage: "Debe ingresar una edad entre 1 y 100",
}, {
        label: "Notificacones",
        type: "bit",
        require: "false",
        name: "notify",
},
    {
        label: "Pais",
        type: "select",
        len: 20,
        require: "true",
        name: "codPais",
        fill: "http://localhost:4000/public/api/select/Country",
},
    {
        label: "Departamento",
        type: "select",
        len: 20,
        require: "true",
        name: "codDepartamento",
        fill: "http://localhost:4000/public/api/select/Department",
        whoRequire: ["codPais"],
},
    {
        label: "Ciudad",
        type: "select",
        len: 20,
        require: "true",
        name: "city",
        fill: "http://localhost:4000/public/api/select/City",
        whoRequire: ["codPais", "codDepartamento"],
},
    {
        label: "Ip",
        type: "text",
        require: "true",
        name: "ip",
        pattern: "[0-9]{1,4}\\.[0-9]{1,4}\\.[0-9]{1,4}\\.[0-9]{1,4}",
        errorMessage: "Debe ser una ip valida",
    },
];
