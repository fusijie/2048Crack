.class public final Lcom/inmobi/commons/InMobi;
.super Ljava/lang/Object;
.source "InMobi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/InMobi$LOG_LEVEL;
    }
.end annotation


# static fields
.field public static final EXCLUDE_FB_ID:I = 0x4

.field public static final EXCLUDE_ODIN1:I = 0x2

.field public static final EXCLUDE_UM5_ID:I = 0x8

.field public static final ID_DEVICE_NONE:I = 0x0

.field public static final INCLUDE_DEFAULT:I = 0x1

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/data/UserInfo;->addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "4.1.1"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    :cond_0
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/app/Activity;)V

    .line 119
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez p0, :cond_2

    .line 70
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Application Context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 116
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->init(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setActivity(Landroid/app/Activity;)V

    .line 118
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->updateInfo()V

    goto :goto_0

    .line 75
    :cond_2
    if-nez p1, :cond_3

    .line 76
    :try_start_1
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "APP ID Cannot be NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "appId cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    :cond_4
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "appId cannot be blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 89
    const-string v1, "[InMobi]-4.1.1"

    const-string v2, "InMobi init successful"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/app/Activity;)V

    .line 95
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->reportAppDownloadGoal()V

    .line 99
    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->init(Landroid/app/Activity;)V

    .line 100
    new-instance v0, Lcom/inmobi/commons/InMobi$a;

    invoke-direct {v0}, Lcom/inmobi/commons/InMobi$a;-><init>()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V

    .line 111
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->removeIDType(Lcom/inmobi/commons/IMIDType;)V

    .line 324
    return-void
.end method

.method public static setAge(I)V
    .locals 2
    .parameter

    .prologue
    .line 293
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setAge(Ljava/lang/Integer;)V

    .line 294
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setAreaCode(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Area code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentLocation(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    if-eqz p0, :cond_0

    .line 202
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setCurrentLocation(Landroid/location/Location;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Location cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDateOfBirth(Ljava/util/Calendar;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    if-eqz p0, :cond_0

    .line 246
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDateOfBirth(Ljava/util/Calendar;)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Date Of Birth cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDeviceIDMask(I)V
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDeviceIDMask(I)V

    .line 184
    return-void
.end method

.method public static setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    if-eqz p0, :cond_0

    .line 275
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEducation(Lcom/inmobi/commons/EducationType;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    if-eqz p0, :cond_0

    .line 285
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    .line 286
    :cond_0
    return-void
.end method

.method public static setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    if-eqz p0, :cond_0

    .line 258
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setGender(Lcom/inmobi/commons/GenderType;)V

    .line 259
    :cond_0
    return-void
.end method

.method public static setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 364
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    .line 365
    :cond_0
    return-void
.end method

.method public static setIncome(I)V
    .locals 2
    .parameter

    .prologue
    .line 266
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setIncome(Ljava/lang/Integer;)V

    .line 267
    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setInterests(Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Interests cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLanguage(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Language cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLocationInquiryAllowed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLocationInquiryAllowed(Z)V

    .line 194
    return-void
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/inmobi/commons/data/UserInfo;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    .line 155
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 159
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0
.end method

.method public static setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    if-eqz p0, :cond_0

    .line 332
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    .line 333
    :cond_0
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setPostalCode(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "[InMobi]-4.1.1"

    const-string v1, "Postal Code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    if-eqz p0, :cond_0

    .line 354
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    .line 355
    :cond_0
    return-void
.end method
