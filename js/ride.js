var WildRydes=window.WildRydes||{};WildRydes.map=WildRydes.map||{},function(e){var n;function t(n){var t,i;console.log("Response received from API: ",n),i="Male"===(t=n.Unicorn).Gender?"his":"her",a(t.Name+", your "+t.Color+" unicorn, is on "+i+" way."),function(e){var n=WildRydes.map.selectedPoint,t={};n.latitude>WildRydes.map.center.latitude?t.latitude=WildRydes.map.extent.minLat:t.latitude=WildRydes.map.extent.maxLat;n.longitude>WildRydes.map.center.longitude?t.longitude=WildRydes.map.extent.minLng:t.longitude=WildRydes.map.extent.maxLng;WildRydes.map.animate(t,n,e)}(function(){a(t.Name+" has arrived. Giddy up!"),WildRydes.map.unsetLocation(),e("#request").prop("disabled","disabled"),e("#request").text("Set Pickup")})}function i(){var n=e("#request");n.text("Request Unicorn"),n.prop("disabled",!1)}function o(i){var o=WildRydes.map.selectedPoint;i.preventDefault(),function(i){e.ajax({method:"POST",url:_config.api.invokeUrl+"/ride",headers:{Authorization:n},data:JSON.stringify({PickupLocation:{Latitude:i.latitude,Longitude:i.longitude}}),contentType:"application/json",success:t,error:function(e,n,t){console.error("Error requesting ride: ",n,", Details: ",t),console.error("Response: ",e.responseText),alert("An error occured when requesting your unicorn:\n"+e.responseText)}})}(o)}function a(n){e("#updates").append(e("<li>"+n+"</li>"))}WildRydes.authToken.then(function(e){e?n=e:window.location.href="/signin.html"}).catch(function(e){alert(e),window.location.href="/signin.html"}),e(function(){e("#request").click(o),e("#signOut").click(function(){WildRydes.signOut(),alert("You have been signed out."),window.location="signin.html"}),e(WildRydes.map).on("pickupChange",i),WildRydes.authToken.then(function(n){n&&(a('You are authenticated. Click to see your <a href="#authTokenModal" data-toggle="modal">auth token</a>.'),e(".authToken").text(n))}),_config.api.invokeUrl||e("#noApiMessage").show()})}(jQuery);