unit TextToSpeech;

interface

function ConvertTextToSpeech(Input: String; Format: String): Boolean;

implementation

uses
  ComObj; // Required for accessing COM objects

function ConvertTextToSpeech(Input: String; Format: String): Boolean;
var
  Voice: Variant;
begin
  try
    Voice := CreateOleObject('SAPI.SpVoice'); // Create SAPI Voice object
    Voice.Speak(Input); // Speak the input text
    Result := True;
  except
    Result := False; // Return false if an error occurs
  end;
end;

end.

