event handling
accept
	"Save the current text of the text being edited as the current acceptable version for purposes of canceling.  Allow my morph to take appropriate action"
	self writeViewData.
	self stateMachineModel changed: #accept.