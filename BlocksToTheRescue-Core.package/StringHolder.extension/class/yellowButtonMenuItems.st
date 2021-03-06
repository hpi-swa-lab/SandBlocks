*BlocksToTheRescue-Core
yellowButtonMenuItems
	"Returns the standard yellow button menu items"
	^{
			#-.
			{'set font... (k)' translated.				#offerFontMenu}.
			{'set style... (K)' translated.				#changeStyle}.
			{'set alignment... (u)' translated.		#chooseAlignment}.
			#-.
			{'make project link (P)' translated.	#makeProjectLink}.
			#-.
			{'find...(f)' translated.					#find}.
			{'find again (g)' translated.				#findAgain}.
			{'find and replace ...' translated.			#findReplace}.
			{'do/replace again (j)' translated.				#again}.
			#-.
			{'undo (z)' translated.					#undo}.
			{'redo (Z)' translated.					#redo}.
			#-.
			{'copy (c)' translated.					#copySelection}.
			{'cut (x)' translated.						#cut}.
			{'paste (v)' translated.					#paste}.
			{'paste...' translated.					#pasteRecent}.
			#-.
			{'do it (d)' translated.		#doIt}.			     
		{'debug it (D)' translated.			#debugIt}.		     
		{'print it (p)' translated.		#printIt}.		     
		{'inspect it (i)' translated.		#inspectIt}.		     
		{'explore it (I)' translated.		#exploreIt}.	
		{'insert block (h)' translated . 	#insertBlock}.	
		{'unblock (H)' translated . 	#unblock}.	
		{'button for it' translated.			#buttonForIt}.		     
		{'tally it' translated.			#tallyIt}.
		{'spy on it' translated.		#spyOnIt}.
			#-.
			{'accept (s)' translated.					#accept}.
			{'cancel (l)' translated.					#cancel}.
			#-.
			{'show bytecodes' translated.			#showBytecodes}.
			#-.
			{'copy html' translated.					#copyHtml}.
			#-.
			{'more...' translated.					#shiftedTextPaneMenuRequest}.
		}