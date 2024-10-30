#pragma once

#include"stl_practice.h"

BaseInstance::BaseInstance(int i){
  count = i;
}

BaseInstanceWithoutCopyConstructor::BaseInstanceWithoutCopyConstructor(int i){
  count = i;
}