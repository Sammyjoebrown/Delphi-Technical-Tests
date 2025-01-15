unit TextToSpeech;

interface

function ConvertTextToSpeech(Input: String; var StatusMessage: String): Boolean;
function PlayAudio(var StatusMessage: String): Boolean;

implementation

uses
  ComObj, System.SysUtils, MMSystem;

const
  TempAudioFile = 'TempAudio.wav'; // Temporary file to store audio

function ConvertTextToSpeech(Input: String; var StatusMessage: String): Boolean;
var
  Voice: Variant;
begin
  try
    StatusMessage := 'Initializing voice...';
    Voice := CreateOleObject('SAPI.SpVoice'); // Create SAPI Voice object
    StatusMessage := 'Speaking...';
    Voice.Speak(Input); // Speak the input text directly
    StatusMessage := 'Speech completed.';
    Result := True;
  except
    on E: EOleSysError do
      StatusMessage := 'SAPI Error: ' + E.Message;
    on E: Exception do
      StatusMessage := 'Unexpected Error: ' + E.Message

  end;
end;


function PlayAudio(var StatusMessage: String): Boolean;
begin
  try
    if FileExists(TempAudioFile) then
    begin
      StatusMessage := 'Playing audio...';
      Result := PlaySound(PChar(TempAudioFile), 0, SND_ASYNC or SND_FILENAME);
      if Result then
        StatusMessage := 'Audio played successfully.'
      else
        StatusMessage := 'Failed to play audio.';
    end
    else
    begin
      StatusMessage := 'No audio file found to play.';
      Result := False;
    end;
  except
    StatusMessage := 'Error playing audio.';
    Result := False;
  end;
end;

end.

