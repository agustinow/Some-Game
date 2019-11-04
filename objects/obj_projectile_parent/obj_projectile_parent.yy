{
    "id": "9eee32e5-8ad0-421c-b5d2-9b3e858c864c",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_projectile_parent",
    "eventList": [
        {
            "id": "9896f13e-8419-4f27-a2ec-e4dc9df1cbf9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "9eee32e5-8ad0-421c-b5d2-9b3e858c864c"
        },
        {
            "id": "9ec3340f-cdcd-4164-91ae-b10cb0e130d5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "9eee32e5-8ad0-421c-b5d2-9b3e858c864c"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "00714ac9-5146-4e25-9c9a-ceabc1683aa2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "xspeed",
            "varType": 0
        },
        {
            "id": "628a3c5a-0c4d-4949-bb2f-85d3cd5e16f2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "25",
            "varName": "damage",
            "varType": 1
        },
        {
            "id": "0831eb04-a113-47eb-8f12-ca1f558e0760",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "invoker",
            "varType": 1
        },
        {
            "id": "4b15bb78-c28f-49f9-9ccf-ea8b9bbc241c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "damages_invoker",
            "varType": 3
        },
        {
            "id": "dfc922bf-a80a-4329-8f73-cf462ead0676",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "knockback",
            "varType": 1
        },
        {
            "id": "5ebcb606-36d8-418a-baf3-51adc43287b1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "penetration",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}