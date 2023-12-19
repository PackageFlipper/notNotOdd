// See https://aka.ms/new-console-template for more information
using System.Text.Json;


public class ApiResponse {
  public string ad {get; set;}
  public bool iseven {get; set;}
}


class notNotOdd{

  static async Task Main(string[] args){
    if(args.Length != 1){
      Console.WriteLine("Usage: notNotOdd <number>");
      return;
    }

    string number_str = args[0];

    var is_number = int.TryParse(number_str, out int number);

    if(!is_number){
      Console.WriteLine("Usage: notNotOdd <number>");
      return;
    }

    var client = new HttpClient();
    var response = 
      await client.GetAsync("https://api.isevenapi.xyz/api/iseven/"+number_str+"/");
    var content = await response.Content.ReadAsStringAsync();

    ApiResponse json_content;
    try{
      json_content = JsonSerializer.Deserialize<ApiResponse>(content);
    }catch(Exception e){
      Console.WriteLine("Error: "+e.Message);
      return;
    }
    Console.WriteLine(json_content.iseven ? "odd" : "even");
  }
}

