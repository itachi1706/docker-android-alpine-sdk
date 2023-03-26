DOCKER_REPO=itachi1706/android-alpine-sdk

if [ $# -le 1 ]; then
    echo "Please pass in list of android builds in CSV format (compile_sdk,build_tools,tag) and Dockerfile"
    echo "Format: ./build.sh <csv file> <Dockerfile>"
    exit 1
fi

file="$1"
dockerfile="$2"

while read csv; do
    IFS=','
    read -a strarr <<< "$csv"

    comp="${strarr[0]}"
    bt="${strarr[1]}"
    tag="$DOCKER_REPO:${strarr[2]}"

    echo "Building Android SDK $comp with Build Tools $bt image using $dockerfile and tagging it as $tag"
    # docker build --pull -t $tag -f $dockerfile --build-arg COMPILE_SDK=$comp --build-arg BUILD_TOOLS=$bt .
    # docker push $tag
    # docker rmi $tag
    
done <$file
