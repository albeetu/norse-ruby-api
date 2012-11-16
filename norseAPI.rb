#!/usr/bin/ruby

require 'net/http'
require 'uri'

class VikingRequest
  @apiKey
  @method
  @config_blacklist_xsl = 'http://api.ipviking.com/api/blacklist.xsl'
  @config_reputation_xsl = 'http://api.ipviking.com/api/reputation.xsl'
  @config_risk_xsl = 'http://api.ipviking.com/api/risk.xsl'
  @details_url_base = 'http://api.ipviking.com/details.php?r='
  @@urldisplay = 0
  @@score = 1000
  @@risk = 0

  def initialize(url, verb = 'POST', requestBody = nil)
     @url = url
     @verb = verb
     @requestBody = requestBody
     @requestLength = 0
     @username = nil
     @password = nil
     @acceptType = 'application/xml'
     @responseInfo = nil
  end
  
  def test()
     puts "------Testing API------"
     puts @url
     puts @verb
     puts @requestBody
     execute()
  end
  
  def flush()
  end
  
  def execute()
     begin
     	case @verb
     	  when "GET"
     	    puts "GETTING"
     	    executeGet()
     	  when "POST"
     	    puts "POSTING"
     	    executePost()
     	  when "DELETE"
     	    puts "DELETING"
     	    executeDelete()
     	  when "PUT"
     	    puts "PUTTING"
     	    executePut()
     	  else
     	    puts "ERRORRRR"
     	 end
     rescue
     
     	#handle error
     
     ensure
     
     	#this is always executed
     
     end
     
  end
  
  def generateDetailsUrl(ip)
  end

  def ipvikingDisplayStatus(t, ent, method)
  end

  def setRisk()
  end
  
  def getRisk()
  end

  def setScore(score)
  end
  
  def getScore()
  end
  
  def setUrlDisplay()
  end
  
  def ipvikingShowCheck()
  end
  
  def ipvikingDisplayReasons(style,method)
  end

  def ipvikingShowReasons()
  end

  def buildPostBody(data = null)
  end
  
  protected
  def executeGet(ch)
  end

  protected
  def executePost(ch)
  end

  protected
  def executePut(ch)
  end

  protected
  def executeDelete(ch)
  end
 
  protected
  def doExecute(curlHandle)
    @responseBody = Net::HTTP.get_response(curlHandle)
    
  	#	$this->setCurlOpts($curlHandle);
	#	$this->responseInfo	= curl_getinfo($curlHandle);
  end
  
  protected
  def setCurlOpts(handle)
  end

=begin  
  protected
  def setAuth(handle)
    if (@username !== nil && @password !== nil) then
      
			curl_setopt($curlHandle, CURLOPT_HTTPAUTH, CURLAUTH_DIGEST);
			curl_setopt($curlHandle, CURLOPT_USERPWD, $this->username . ':' . $this->password);
    end
  end
=end

end
