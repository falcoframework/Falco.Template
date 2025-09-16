# Falco Template

[![NuGet Version](https://img.shields.io/nuget/v/Falco.Template.svg)](https://www.nuget.org/packages/Falco.Template)

## Installation

The easiest way to install the Falco template is by running the following command in your terminal:

```shell
> dotnet new install "Falco.Template::*"
```

This will pull and install the latest [Falco.Template NuGet package](https://www.nuget.org/packages/Falco.Template/) into your .NET environment and make it available to subsequent `dotnet new` commands.

## Updating the template

Whenever there is a new version of the Falco template you can update it by re-running the [instructions from the installation](#installation).

You can also explicitly set the version when installing the template:

```shell
> dotnet new install "Falco.Template::5.0.3"
```

## Getting Started

After the template has been installed you can create a new Falco web application by simply running `dotnet new falco` in your terminal:

```shell
> dotnet new falco -o /path/to/app/MyFalcoAp
> dotnet run --project /path/to/app/MyFalcoApp
```

This will generate a basic ASP.NET web application with Falco installed and activate, demonstrating some basic routing and output techniques.

## Running the template locally

To experiment with the template locally, from source:

```shell
> cd src/Templates
> dotnet pack --configuration Release
> dotnet new install /bin/Release/Falco.Template.5.0.3.nupkg
```

To uninstall the local version:

```shell
> dotnet new uninstall Falco.Templates
```

## Find a bug?

There's an [issue](https://github.com/FalcoFramework/Falco.Template/issues) for that.


## License

Licensed under [Apache License 2.0](https://github.com/FalcoFramework/Falco.Template/blob/master/LICENSE).
