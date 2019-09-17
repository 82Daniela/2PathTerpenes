	    function download(filename, text) {
	        var element = document.createElement('a');
	        element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
	        element.setAttribute('download', filename);

	        element.style.display = 'none';
	        document.body.appendChild(element);

	        element.click();

	        document.body.removeChild(element);
	    }
	        	// Start file download.
	    document.getElementById("dwn-btn").addEventListener("click", function(){
	        // Generate download of hello.txt file with some content
	        var text = document.getElementById("corpo").innerText;
	        var filename = "simulation.py";
	        
	        download(filename, text);
	    }, false);


	    var x="<br/>"+"strat = (addSubset(eductMols) >> repeat["+1+"](inputRules))"+"<br/>";;
	    
	    function generationFunction() {
	      var result="";

	      const options = document.getElementById('lstview_to').options;
	      for (let i = 0; i < options.length; i++) {
	            result+="<br />"+(options[i].value)+"<br />";
	      }
	      document.getElementById('rules').innerHTML=result;
	      document.getElementById('interations').innerHTML=x;

	    }


	    window.getNumber = function() {

	    		
	            var number=document.getElementById("number").value; 
	        	
	            
	            x="<br/>"+"strat = (addSubset(eductMols) >> repeat["+number+"](inputRules))"+"<br/>";
	            document.getElementById("interations").innerHTML=x;




	            
	    }
