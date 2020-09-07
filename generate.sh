#!/usr/bin/env bash

generate() {
    local spec="$1";
    local output_folder="$2";
    local package_name="$3";
    local generator="$4";

    rm -rf "$output_folder/";
    mkdir -p "$output_folder";
    cp ._openapi-generator-ignore "./$output_folder/.openapi-generator-ignore";
    cp ._gitignore "./$output_folder/.gitignore";

    # generate project
    java -jar bin/openapi-generator-cli.jar generate \
      -i "$spec" \
      -g "$generator" \
      -o "./$output_folder" \
      -p "pubName=$package_name" \
      --enable-post-process-file \
      --global-property models,modelDocs=true,modelTests=false,apis,apiTests=false,apiDocs=true,supportingFiles;

    cd "$output_folder";
    flutter pub get;

    if [[ "$generator" == "dart-dio" || "$generator" == "dart-jaguar" ]]; then
      flutter pub run build_runner build;
    fi
}

# Allows to call a function based on arguments passed to the script
generate $*
