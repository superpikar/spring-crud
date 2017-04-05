/**
 * NaverSmartEditor is a wrapper of naver smart editor. 
 * Using reveal module and constructor pattern, see details here https://addyosmani.com/resources/essentialjsdesignpatterns/book/#revealingmodulepatternjavascript
 * @returns { NaverSmartEditor }
 * @author http://twitter.com/superpikar
 */
NaverSmartEditor = (function(){
	var _privateVar = "@superpikar";
	
	function NaverSmartEditor(selectorID, sSkinURI) {
		this.selectorID = selectorID;
		this.oEditors = [];

		// 추가 글꼴 목록
		//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef: this.oEditors,
			elPlaceHolder: this.selectorID,
			sSkinURI: sSkinURI,
			htParams : {
				bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				fOnBeforeUnload : function(){
					//alert("완료!");
				}
			}, //boolean
			fOnAppLoad : function(){
				//예제 코드
				//oEditors.getById["desc"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
			},
			fCreator: "createSEditor2"
		});
	}
	
	function setEditorValue(){
		var content = this.oEditors.getById[this.selectorID].getIR();
		document.getElementById(this.selectorID).value = content;
		console.log('#', this.selectorID, content);
		return content;
	}
	
	NaverSmartEditor.prototype = {
		setEditorValue: setEditorValue
	}
	
	return NaverSmartEditor;
})();