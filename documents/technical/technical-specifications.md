# Technical Specifications - Coding Dojo
## Document Control

**Document Information:**
| | Information |
| --- | --- |
| Document Owner | Maxime CARON |
| Creation Date | 2024-03-24 |
| Last Updated | 2024-03-26 |
| Document Name | Technical Specifications - Coding Dojo |

**Version History:**
| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 0.1 | 2024-03-24 | Maxime CARON | Initial draft |

## Summary
<details>
<summary>Click to expand!</summary>

- [Technical Specifications - Coding Dojo](#technical-specifications---coding-dojo)
  - [Document Control](#document-control)
  - [Summary](#summary)
  - [Overview](#overview)
    - [Project](#project)
  - [Architecture](#architecture)
    - [Server](#server)
    - [Database](#database)
    - [App](#app)
  - [Exercises](#exercises)
    - [Code Correction](#code-correction)
    - [Server Code](#server-code)
    - [Code Upload](#code-upload)
  - [Resources and Constraints](#resources-and-constraints)
    - [Resources](#resources)
    - [Constraints](#constraints)
  - [Risks and Mitigation](#risks-and-mitigation)
  - [Overall Plan](#overall-plan)
  - [Glossary](#glossary)


</details>

## Overview

This document aims to provide a technical overview of the Coding Dojo project.

### Project

Every day, new people try to discover the world of programming, and every day, some of them are confronted with a similar problem. They can learn the basics, but they have trouble learning the algorithms. That's why this project exists. This project is a web application designed to help new developers acquire increased programming skills. With exercises and lessons provided, beginners will be capable of entering the world of algorithms step by step.

## Architecture

The application will be divided into three main parts: 
- The server
- The database
- The app.

### Server

**Hardware:**<br>
The server hardware is a virtual machine with a Intel core i5-6300HQ processor, 32 GB of RAM, and 2TB of storage.

**Software:**<br>
The server operating system is Linux server. It is a family of open-source Unix-like operating systems based on the Linux kernel. The server will host the application and the database. It will also be used to host the Kubernetes cluster, and Docker containers.

### Database
The database is MySQL. It is a relational database management system based on SQL – Structured Query Language. The application will use it to store and manage data.

### App
The application is a web application. It will be developed with Go with Beego framework.

## Exercises
The application will contain exercises to help users learn algorithmic concepts. The exercises will be divided into different type:
- Code Correction
- Server Code
- Code Upload

### Code Correction
Code Correction exercises will present a piece of code with errors. The user will have to identify and correct the errors. Once the code is fully corrected the user will be able to execute it and see the returned flag. The is a code to valide the exercise.

### Server Code
- Use rest API to communicate with server

### Code Upload
- Run it into docker container
	- Restricted resources
	- Restricted access
	- etc...

## Resources and Constraints

### Resources

For this project, the following resources will be required:
- A server to host the application
- A database to store the exercises and the documentation
- A Kubernetes cluster to manage the containers
- A Git repository to store the code
- A Linux server to host the Kubernetes cluster
- A REST API to communicate with the server

### Constraints

The following constraints will be taken into account:
- The application must differentiate ALGOSUP students from other users.
- Exercises must incorporate a gradual level of difficulty.
- The application must be accessible from any web browser.
- The application must be straightforward to maintain and update.
- The application must have a first release date of 2024-09-01.
- The application must respect user privacy.
- The application must be developed using the following technologies:
    - Ruby on Rails
    - MySQL
    - Docker
    - Kubernetes
    - Linux

## Risks and Mitigation

| Risk | Mitigation |
| --- | --- |
| Server failure | Regular backups will be performed to prevent data loss. |
| Database corruption | Regular backups will be performed to prevent data loss. |
| Code errors | Code reviews will be performed to identify and correct errors. |
| Data loss | Regular backups will be performed to prevent data loss. |
| Server overload | Load balancing will be implemented to distribute the load across multiple servers. |
| Hardware failure | Regular hardware checks will be performed to identify and replace faulty hardware. |
| Software failure | Regular software updates will be performed to prevent software failures. |

## Overall Plan

To ensure the success of the project, the team will follow the following plan for the development part:
| Priority | Task | Description | Phase |
| --- | --- | --- | --- |
| 1 | Database design | The database will be designed to store the exercises and the documentation. | Prototype |
| 2 | Server setup | The server will be set up to host the application. | Prototype |
| 3 | App development | The application will be developed with Ruby on Rails. | Prototype |
| 4 | Code Correction | Code Correction exercises will be developed. | Prototype |
| 5 | Code Upload | Code Upload exercises will be developed. | Prototype |


## Glossary

| Term | Definition |
| --- | --- |
| ALGOSUP | A school that teaches programming. |
| Web browser | A software that allows you to access the web. |
| Kubernetes | An open-source container orchestration system for automating application deployment, scaling, and management. |
| Docker | A platform for developing, shipping, and running applications in containers. |
| MySQL | An open-source relational database management system based on SQL – Structured Query Language. |
| Go | An open-source programming language that makes it easy to build simple, reliable, and efficient software. |
| Beego | A web application framework for the Go programming language. |
| REST API | A set of rules that developers follow when they create their application. |
| Linux | A family of open-source Unix-like operating systems based on the Linux kernel. |
| Code Correction | An exercise that presents a piece of code with errors. The user has to identify and correct the errors. |
| Code Upload | An exercise that requires the user to upload a piece of code. The code is then executed in a restricted environment. |
| Server Code | An exercise that requires the user to interact with a server using a REST API. |
| Load balancing | The process of distributing network traffic across multiple servers to ensure no single server is overwhelmed. |
| Redundant network | A network that has multiple paths to ensure network connectivity in case of a failure. |
| Redundant power supply | A power supply that has multiple power sources to ensure power availability in case of a failure. |
| Code review | A process in which developers review each other's code to identify and correct errors. |
