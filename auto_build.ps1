# 设置项目根目录
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

# 设置构建目录
$buildDir = Join-Path -Path $projectRoot -ChildPath "build"

# 清理旧的构建文件（可选）
if (Test-Path -Path $buildDir) {
    Write-Host "Cleaning old build files..."
    Remove-Item -Recurse -Force $buildDir
}

# 创建构建目录
New-Item -ItemType Directory -Path $buildDir -Force

# 进入构建目录
Set-Location -Path $buildDir

# 配置CMake
Write-Host "Configuring CMake..."
cmake -G "MinGW Makefiles" ..

# 检查CMake配置是否成功
if ($LASTEXITCODE -ne 0) {
    Write-Host "CMake configuration failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit 1
}

# 构建项目
Write-Host "Building the project..."
mingw32-make

# 检查构建是否成功
if ($LASTEXITCODE -ne 0) {
    Write-Host "Build failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit 1
} else {
    Write-Host "Build succeeded!" -ForegroundColor Green
}

# 返回项目根目录
Set-Location -Path $projectRoot