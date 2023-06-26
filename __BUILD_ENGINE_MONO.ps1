scons p=windows module_mono_enabled=true

scons platform=windows target=template_debug arch=x86_64 module_mono_enabled=true

.\bin\godot.windows.editor.x86_64.mono.console.exe --headless --generate-mono-glue ./modules/mono/glue

py ./modules/mono/build_scripts/build_assemblies.py --godot-output-dir ./bin --push-nupkgs-local bin/NuGet/MyLocalNugetSource
