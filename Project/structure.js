var data = [
    {
        label: "Nombre",
        type: "text",
        len: 15,
        require: "true",
        name: "name",
        fill: "",
        whoRequire: [],
        lostFocus: "",
        errorMessage: "La longitud maxima del Nombre es 15 caracterés",
        test: ""
        },
    {
        label: "Apellido",
        type: "text",
        len: 20,
        require: "false",
        name: "lastname",
        fill: "",
        whoRequire: [],
        lostFocus: "",
        errorMessage: "La longitud maxima del apellido es 20 caracterés",
        test: ""
},
    {
        label: "Edad",
        type: "number",
        max: 100,
        min: 1,
        require: "true",
        name: "age",
        fill: "",
        whoRequire: [],
        lostFocus: "",
        errorMessage: "Debe ingresar una edad entre 1 y 100",
        test: ""
}, {
        label: "Notificacones",
        type: "bit",
        require: "false",
        name: "notify",
        fill: "",
        whoRequire: [],
        lostFocus: "",
        test: ""
},
    {
        label: "Pais",
        type: "select",
        len: 20,
        require: "true",
        name: "codPais",
        fill: "http://localhost:4000/public/api/select/Country",
        whoRequire: [],
        lostFocus: "",
        test: ""
},
    {
        label: "Ip",
        type: "text",
        require: "true",
        name: "ip",
        pattern: "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}",
        errorMessage: "Debe ser una ip valida",
        test: ""
    },
    {
        label: "Departamento",
        type: "select",
        len: 20,
        require: "true",
        name: "codDepartamento",
        fill: "http://localhost:4000/public/api/select/Department",
        whoRequire: ["codPais"],
        lostFocus: "",
        test: ""
},
{
        label: "Ciudad",
        type: "select",
        len: 20,
        require: "true",
        name: "city",
        fill: "http://localhost:4000/public/api/select/City",
        whoRequire: ["codPais","codDepartamento"],
        lostFocus: "",
        test: ""
}
];
