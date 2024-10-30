#include <iostream>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

class BaseInstance {
 public:
  BaseInstance();
  BaseInstance(int i);

 private:
  int count;
};

class BaseInstanceWithoutCopyConstructor {
 public:
  BaseInstanceWithoutCopyConstructor();
  BaseInstanceWithoutCopyConstructor(int i);
  BaseInstanceWithoutCopyConstructor(
      BaseInstanceWithoutCopyConstructor &original) = delete;
  BaseInstanceWithoutCopyConstructor(
      BaseInstanceWithoutCopyConstructor &&original) = default;

 private:
  int count;
};