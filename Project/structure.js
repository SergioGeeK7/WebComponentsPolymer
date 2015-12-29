var data = [
    {
        label: "Nombre",
        type: "text",
        len: 15,
        require: "true",
        name: "name",
        fill: "",
        whoRequire: [],
        lostFocus: ""
},
    {
        label: "Apellido",
        type: "text",
        len: 20,
        require: "false",
        name: "lastname",
        fill: "",
        whoRequire: [],
        lostFocus: ""
},
    {
        label: "Edad",
        type: "number",
        max: 100,
        min: 1,
        require: "false",
        name: "age",
        fill: "",
        whoRequire: [],
        lostFocus: ""
}, {
        label: "Notificacones",
        type: "bit",
        require: "true",
        name: "notify",
        fill: "",
        whoRequire: [],
        lostFocus: ""
},
    {
        label: "Pais",
        type: "select",
        len: 20,
        require: "true",
        name: "country",
        fill: "http://localhost:4000/public/api/select/Country",
        whoRequire: [],
        lostFocus: ""
},
  /*  {
        label: "Departamento",
        type: "select",
        len: 20,
        require: "true",
        name: "department",
        fill: "http://localhost:4000/select/Department",
        whoRequire: ["country"],
        lostFocus: ""
}*/
];
