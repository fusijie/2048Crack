.class public final Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    const-string v1, "d-device-screen-density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "&d-device-screen-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :cond_2
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 56
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "u-postalCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "&mk-carrier=117.97.87.6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "&x-real-ip=117.97.87.6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0

    .line 79
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "&u-areaCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 84
    const-string v0, "&u-dateOfBirth="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 88
    const-string v0, "&u-gender="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/GenderType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 93
    const-string v0, "&p-keywords="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 97
    const-string v0, "&p-type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    if-lez v0, :cond_9

    .line 101
    const-string v0, "&u-income="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 105
    const-string v0, "&u-education="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/EducationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 109
    const-string v0, "&u-ethnicity="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/EthnicityType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    if-lez v0, :cond_c

    .line 113
    const-string v0, "&u-age="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    :cond_c
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 117
    const-string v0, "&u-interests="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 121
    const-string v0, "&u-location="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_e
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 127
    const-string v0, "&u-marital="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/MaritalStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_f
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 131
    const-string v0, "&u-haschildren="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/HasChildren;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_10
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 135
    const-string v0, "&u-language="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_11
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 139
    const-string v0, "&u-sexualorientation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/SexualOrientation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&ts="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "&tz="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p1, :cond_13

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&c-ap-bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_13
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    .line 156
    if-eqz v0, :cond_14

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&c-sid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :cond_14
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 161
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v3, "Exception getting cell tower id"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private static b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "mk-siteid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUIDMapEncrypted()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "&u-id-map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUIDMapEncrypted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "&u-id-key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "&u-key-ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRsakeyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    const-string v1, "&mk-version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pr-SAND-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.1.1"

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "20140131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v2, "&mk-rel-version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "&format=imai"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, "&mk-ads=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "&h-user-agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "&u-appbid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppBId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "&u-appDNM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "&u-appver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "&d-localization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 252
    const-string v1, "&d-netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    const-string v1, "&d-orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    :cond_4
    const-string v1, "&mk-ad-slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAdUnitSlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSlotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 264
    const-string v1, "&mk-site-slotid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 268
    const-string v1, "&u-latlong-accu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "&u-ll-ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGeoTS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 276
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_8

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :cond_8
    :goto_0
    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    :try_start_0
    invoke-static {p0, p1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v2, p2, :cond_4

    .line 29
    const-string v2, "requestactivity=AdRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_2
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_4
    :try_start_1
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v2, p2, :cond_0

    .line 31
    const-string v2, "adtype=int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v2, "[InMobi]-[Network]-4.1.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured in an ad request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocAccuracy()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 320
    const-string v0, ""

    .line 323
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 310
    const-string v0, ""

    .line 312
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v0, ""

    goto :goto_0
.end method
