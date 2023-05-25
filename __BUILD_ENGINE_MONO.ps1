scons p=windows module_mono_enabled=true

.\bin\godot.windows.editor.x86_64.mono.console.exe --headless --generate-mono-glue ./modules/mono/glue

./modules/mono/build_scripts/build_assemblies.py --godot-output-dir ./bin
