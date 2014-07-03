.class public Lcom/mdotm/android/http/MdotMJSONParser;
.super Ljava/lang/Object;
.source "MdotMJSONParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Ljava/lang/String;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 7
    .parameter "responses"

    .prologue
    const/4 v6, 0x0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The response is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, response:Lcom/mdotm/android/model/MdotMAdResponse;
    new-instance v3, Lcom/mdotm/android/model/MdotMAdResponse;

    .end local v3           #response:Lcom/mdotm/android/model/MdotMAdResponse;
    invoke-direct {v3}, Lcom/mdotm/android/model/MdotMAdResponse;-><init>()V

    .line 38
    .restart local v3       #response:Lcom/mdotm/android/model/MdotMAdResponse;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "img_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 46
    const-string v4, "img_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setOriginalImageUrl(Ljava/lang/String;)V

    .line 47
    const-string v4, "landing_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setLandingUrl(Ljava/lang/String;)V

    .line 48
    const-string v4, "ad_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v4, v5, :cond_1

    .line 49
    sget v4, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    :try_start_1
    const-string v4, "ad_text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :goto_1
    :try_start_2
    const-string v4, "launch_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setLaunchType(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :goto_2
    :try_start_3
    const-string v4, "imp_pixel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setImp_pixel(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_3
    return-object v3

    .line 50
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    const-string v4, "ad_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    if-ne v4, v5, :cond_0

    .line 51
    sget v4, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v6}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    goto :goto_3

    .line 65
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "unable to get the impression pixel"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 70
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 71
    const-string v4, "MdotM message - No_FILL for ad request"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 60
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 55
    :catch_3
    move-exception v4

    goto :goto_1
.end method
