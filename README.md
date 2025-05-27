# Stitch-Witch3

## Team Members
- Julieee12: ***Iulia***
- d4211n9: ***Patrick***
- Jean-Jensen: ***Jean***

## Deployment
- Deployed webapp:
- Deployed backend:

## Setup
If you wish to run this project locally, these are the changes you need to make.

**StitchWitchBackend/Startup/appsettings.json** contents:
```
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*",
  "AppOptions": {
    "DbConnectionString": ***Insert your C# formatted connection string***,
    "MediaHostingUrl": ***Insert link to your media hosting service. This app currently uses Cloudinary***
  }
}
```

**stitch_witch_aid/lib/backend-uris.dart** needs to be changed to point to your locally run backend.

## Description
Stitch Witch is a project that helps crocheting hobbyists keep track of their work, such as projects and materials.
This project has features for helping organize projects/items by giving them tags and by searching,
and also has a counter for helping either manually or automatically keep track of stitch count, and time spent on each project.
