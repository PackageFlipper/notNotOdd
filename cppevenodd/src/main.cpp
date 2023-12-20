#include <iostream>
#include <array>
#include <vector>

constexpr size_t generateOddNumber(size_t n){
  return 2*n + 1;
}


template<size_t... I>
constexpr auto generateOddNumbers(std::index_sequence<I...>){
  return std::array<size_t,sizeof...(I)>{generateOddNumber(I)...};
}


int main(int argc, char** argv){
  constexpr size_t numberOfOdds = 1'047'000; // UHHHHH this is a magic number, idfk
  size_t inputNumber;

  constexpr auto oddNumbers = generateOddNumbers(std::make_index_sequence<numberOfOdds>{});

  std::vector<std::string> args;

  for(int i = 0; i < argc; ++i){
    args.push_back(argv[i]);
  }

  if(args.size() > 1){
    try{
      inputNumber = std::stol(args[1]);
    }catch(std::exception& e){
      std::cout << "Invalid input: " << args[1] << std::endl;
      return 1;
    }

    if(inputNumber < 0){
      std::cout << "Invalid input can't accept negatives: " << inputNumber << std::endl;
      return 1;
    }

    if(inputNumber > numberOfOdds){
      std::cout << "Invalid input can't accept numbers greater than: " << numberOfOdds << std::endl;
      return 1;
    }
    for(size_t curr: oddNumbers){
      if(curr == inputNumber){
        std::cout << "odd" << std::endl;
        return 0;
      }
    }
    std::cout << "even" << std::endl;
  }

  


  return 0;
}
