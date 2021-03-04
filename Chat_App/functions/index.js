const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.myFunction = functions.firestore
  .document("chat/{message}")
  .onCreate((shap, context) => {
    console.log(shap.data());
    return admin.messaging().sendToTopic("chat", {
      notification: {
        title: shap.data().username,
        body: shap.data().text,
        clickAction: "FLUTTER_NOTIFICATION_CLICK",
      },
    });
  });
