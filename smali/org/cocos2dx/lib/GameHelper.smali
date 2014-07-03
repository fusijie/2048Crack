.class public Lorg/cocos2dx/lib/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/games/OnSignOutCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/GameHelper$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0x7

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

.field mAutoSignIn:Z

.field mClientCurrentlyConnecting:I

.field mConnectedClients:I

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mExpectingActivityResult:Z

.field mGamesClient:Lcom/google/android/gms/games/GamesClient;

.field mInvitationId:Ljava/lang/String;

.field mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

.field mPlusClient:Lcom/google/android/gms/plus/PlusClient;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRequestedClients:I

.field mScopes:[Ljava/lang/String;

.field mSignInError:Z

.field mSignedIn:Z

.field mSigningInMessage:Ljava/lang/String;

.field mSigningOutMessage:Ljava/lang/String;

.field mUnknownErrorMessage:Ljava/lang/String;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    .line 66
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 67
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    .line 77
    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mRequestedClients:I

    .line 80
    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 83
    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    .line 86
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    iput-boolean v2, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 97
    iput-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mUserInitiatedSignIn:Z

    .line 100
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 105
    iput-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 110
    iput-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mExpectingActivityResult:Z

    .line 113
    iput-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    .line 116
    iput-boolean v2, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugLog:Z

    .line 117
    const-string v0, "BaseGameActivity"

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugTag:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningInMessage:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningOutMessage:Ljava/lang/String;

    .line 122
    const-string v0, "Can not sign in :("

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mUnknownErrorMessage:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    .line 138
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    .line 139
    return-void
.end method


# virtual methods
.method addToScope(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "scopeStringBuilder"
    .parameter "scope"

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const-string v0, "oauth2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    return-void

    .line 463
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public beginUserInitiatedSignIn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 421
    iget-boolean v2, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    if-eqz v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iput-boolean v4, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 429
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 430
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isGooglePlayServicesAvailable returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 431
    if-eqz v1, :cond_2

    .line 433
    const-string v2, "Google Play services not available. Show error dialog."

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->getErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 435
    .local v0, errorDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 436
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    invoke-interface {v2}, Lorg/cocos2dx/lib/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_0

    .line 441
    .end local v0           #errorDialog:Landroid/app/Dialog;
    :cond_2
    iput-boolean v4, p0, Lorg/cocos2dx/lib/GameHelper;->mUserInitiatedSignIn:Z

    .line 442
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_3

    .line 445
    const-string v2, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v4}, Lorg/cocos2dx/lib/GameHelper;->showProgressDialog(Z)V

    .line 447
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 450
    :cond_3
    const-string v2, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->startConnections()V

    goto :goto_0
.end method

.method connectCurrentClient()V
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    packed-switch v0, :pswitch_data_0

    .line 535
    :goto_0
    :pswitch_0
    return-void

    .line 526
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->connect()V

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateClient;->connect()V

    goto :goto_0

    .line 532
    :pswitch_3
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method connectNextClient()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 496
    iget v1, p0, Lorg/cocos2dx/lib/GameHelper;->mRequestedClients:I

    iget v2, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    xor-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    .line 497
    .local v0, pendingClients:I
    if-nez v0, :cond_0

    .line 498
    const-string v1, "All clients now connected. Sign-in successful."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->succeedSignIn()V

    .line 521
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/GameHelper;->showProgressDialog(Z)V

    .line 506
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 507
    const-string v1, "Connecting GamesClient."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 508
    iput v3, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    .line 520
    :goto_1
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->connectCurrentClient()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v1, :cond_2

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 510
    const-string v1, "Connecting PlusClient."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x2

    iput v1, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    goto :goto_1

    .line 512
    :cond_2
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 513
    const-string v1, "Connecting AppStateClient."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 514
    const/4 v1, 0x4

    iput v1, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    goto :goto_1

    .line 516
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not all clients connected, yet no one is next. R="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    iget v3, p0, Lorg/cocos2dx/lib/GameHelper;->mRequestedClients:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", C="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 732
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    return-void
.end method

.method dismissDialog()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 491
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 492
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "tag"

    .prologue
    .line 342
    iput-boolean p1, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugLog:Z

    .line 343
    iput-object p2, p0, Lorg/cocos2dx/lib/GameHelper;->mDebugTag:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public getAppStateClient()Lcom/google/android/gms/appstate/AppStateClient;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No AppStateClient. Did you request it at setup?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getErrorDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x0

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Making error dialog for error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    .line 721
    const/16 v2, 0x232a

    .line 720
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 723
    .local v0, errorDialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 727
    .end local v0           #errorDialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .restart local v0       #errorDialog:Landroid/app/Dialog;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mUnknownErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 728
    const v2, 0x104000a

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public getGamesClient()Lcom/google/android/gms/games/GamesClient;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GamesClient. Did you request it at setup?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mInvitationId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusClient()Lcom/google/android/gms/plus/PlusClient;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PlusClient. Did you request it at setup?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v1, scopeStringBuilder:Ljava/lang/StringBuilder;
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mRequestedClients:I

    .line 356
    .local v0, clientsToUse:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "https://www.googleapis.com/auth/games"

    invoke-virtual {p0, v1, v2}, Lorg/cocos2dx/lib/GameHelper;->addToScope(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 359
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 360
    const-string v2, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {p0, v1, v2}, Lorg/cocos2dx/lib/GameHelper;->addToScope(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 362
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 363
    const-string v2, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {p0, v1, v2}, Lorg/cocos2dx/lib/GameHelper;->addToScope(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 365
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSignInError()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method giveUp()V
    .locals 4

    .prologue
    .line 681
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 682
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 683
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->dismissDialog()V

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "giveUp: giving up on connection. "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v1, :cond_1

    const-string v1, "(no connection result)"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, errorDialog:Landroid/app/Dialog;
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    .line 691
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->getErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 693
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    invoke-interface {v1}, Lorg/cocos2dx/lib/GameHelper$GameHelperListener;->onSignInFailed()V

    .line 700
    :cond_0
    :goto_1
    return-void

    .line 686
    .end local v0           #errorDialog:Landroid/app/Dialog;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Status code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 698
    .restart local v0       #errorDialog:Landroid/app/Dialog;
    :cond_2
    const-string v1, "GameHelper"

    const-string v2, "giveUp() called with no mConnectionResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    return v0
.end method

.method killConnections(I)V
    .locals 1
    .parameter "whatClients"

    .prologue
    .line 538
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 541
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->disconnect()V

    .line 543
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 546
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 548
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 551
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateClient;->disconnect()V

    .line 553
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "responseCode"
    .parameter "intent"

    .prologue
    .line 394
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mExpectingActivityResult:Z

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult, req "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 400
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 402
    const-string v0, "responseCode == RESULT_OK. So connecting."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->connectCurrentClient()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v0, "responseCode != RESULT_OK, so not reconnecting."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->giveUp()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .parameter "connectionHint"

    .prologue
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected: connected! client="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 582
    iget v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    iget v2, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    or-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 586
    iget v1, p0, Lorg/cocos2dx/lib/GameHelper;->mClientCurrentlyConnecting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 587
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 588
    const-string v1, "invitation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 589
    .local v0, inv:Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 592
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mInvitationId:Ljava/lang/String;

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invitation ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mInvitationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 598
    .end local v0           #inv:Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->connectNextClient()V

    .line 599
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 617
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionFailed: result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->dismissDialog()V

    .line 621
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mUserInitiatedSignIn:Z

    if-nez v0, :cond_1

    .line 628
    const-string v0, "onConnectionFailed: since user didn\'t initiate sign-in, failing now."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 629
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 630
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameHelper$GameHelperListener;->onSignInFailed()V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    const-string v0, "onConnectionFailed: since user initiated sign-in, trying to resolve problem."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->resolveConnectionResult()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 705
    const-string v0, "onDisconnected."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 706
    iput-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 707
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 708
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    .line 709
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 710
    iput-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mInvitationId:Ljava/lang/String;

    .line 711
    iput v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 712
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameHelper$GameHelperListener;->onSignInFailed()V

    .line 715
    :cond_0
    return-void
.end method

.method public onSignOutComplete()V
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->dismissDialog()V

    .line 739
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->disconnect()V

    .line 741
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 275
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    .line 277
    const-string v0, "onStart."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mExpectingActivityResult:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "onStart: won\'t connect because we\'re expecting activity result."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    if-nez v0, :cond_1

    .line 288
    const-string v0, "onStart: not signing in because user specifically signed out."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v0, "onStart: connecting clients."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->startConnections()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 298
    const-string v0, "onStop: disconnecting clients."

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->killConnections(I)V

    .line 305
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    .line 306
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 309
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->dismissDialog()V

    .line 310
    iput-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 313
    iput-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    .line 314
    return-void
.end method

.method public reconnectClients(I)V
    .locals 1
    .parameter "whatClients"

    .prologue
    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->showProgressDialog(Z)V

    .line 558
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 561
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->reconnect()V

    .line 563
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 566
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateClient;->reconnect()V

    .line 568
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 571
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 572
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 574
    :cond_2
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const-string v1, "result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 658
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mExpectingActivityResult:Z

    .line 659
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x2329

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->connectCurrentClient()V

    goto :goto_0

    .line 668
    .end local v0           #e:Landroid/content/IntentSender$SendIntentException;
    :cond_0
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->giveUp()V

    goto :goto_0
.end method

.method public setSigningInMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 143
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningInMessage:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSigningOutMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningOutMessage:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setUnknownErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mUnknownErrorMessage:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setup(Lorg/cocos2dx/lib/GameHelper$GameHelperListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/lib/GameHelper;->setup(Lorg/cocos2dx/lib/GameHelper$GameHelperListener;I)V

    .line 165
    return-void
.end method

.method public setup(Lorg/cocos2dx/lib/GameHelper$GameHelperListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "clientsToUse"

    .prologue
    .line 179
    iput-object p1, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    .line 180
    iput p2, p0, Lorg/cocos2dx/lib/GameHelper;->mRequestedClients:I

    .line 182
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 183
    .local v0, scopesVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 190
    const-string v1, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mScopes:[Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mScopes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 196
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    .line 197
    const-string v1, "onCreate: creating GamesClient"

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/google/android/gms/games/GamesClient$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/google/android/gms/games/GamesClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    .line 199
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/GamesClient$Builder;->setGravityForPopups(I)Lcom/google/android/gms/games/GamesClient$Builder;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mScopes:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/GamesClient$Builder;->setScopes([Ljava/lang/String;)Lcom/google/android/gms/games/GamesClient$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/games/GamesClient$Builder;->create()Lcom/google/android/gms/games/GamesClient;

    move-result-object v1

    .line 198
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    .line 204
    :cond_3
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    .line 205
    const-string v1, "onCreate: creating GamesPlusClient"

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/google/android/gms/plus/PlusClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    .line 207
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mScopes:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/PlusClient$Builder;->setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient$Builder;->build()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v1

    .line 206
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 211
    :cond_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5

    .line 212
    const-string v1, "onCreate: creating AppStateClient"

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/google/android/gms/appstate/AppStateClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    .line 214
    iget-object v2, p0, Lorg/cocos2dx/lib/GameHelper;->mScopes:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/appstate/AppStateClient$Builder;->setScopes([Ljava/lang/String;)Lcom/google/android/gms/appstate/AppStateClient$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/appstate/AppStateClient$Builder;->create()Lcom/google/android/gms/appstate/AppStateClient;

    move-result-object v1

    .line 213
    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAppStateClient:Lcom/google/android/gms/appstate/AppStateClient;

    .line 217
    :cond_5
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 326
    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 319
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 320
    return-void
.end method

.method showProgressDialog(Z)V
    .locals 3
    .parameter "signIn"

    .prologue
    .line 475
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningInMessage:Ljava/lang/String;

    .line 477
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_2

    .line 478
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 486
    .end local v0           #message:Ljava/lang/String;
    :goto_1
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mSigningOutMessage:Ljava/lang/String;

    goto :goto_0

    .line 480
    .restart local v0       #message:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 483
    :cond_2
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    const-string v0, ""

    .end local v0           #message:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 485
    iget-object v1, p0, Lorg/cocos2dx/lib/GameHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method public signOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 371
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 372
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    .line 373
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 375
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->clearDefaultAccount()V

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/GamesClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/GameHelper;->showProgressDialog(Z)V

    .line 380
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mGamesClient:Lcom/google/android/gms/games/GamesClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/GamesClient;->signOut(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    .line 385
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->killConnections(I)V

    .line 386
    return-void
.end method

.method startConnections()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/GameHelper;->mConnectedClients:I

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mInvitationId:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->connectNextClient()V

    .line 472
    return-void
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 602
    const-string v0, "All requested clients connected. Sign-in succeeded!"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 603
    iput-boolean v2, p0, Lorg/cocos2dx/lib/GameHelper;->mSignedIn:Z

    .line 604
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mSignInError:Z

    .line 605
    iput-boolean v2, p0, Lorg/cocos2dx/lib/GameHelper;->mAutoSignIn:Z

    .line 606
    iput-boolean v1, p0, Lorg/cocos2dx/lib/GameHelper;->mUserInitiatedSignIn:Z

    .line 607
    invoke-virtual {p0}, Lorg/cocos2dx/lib/GameHelper;->dismissDialog()V

    .line 608
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/cocos2dx/lib/GameHelper;->mListener:Lorg/cocos2dx/lib/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lorg/cocos2dx/lib/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 611
    :cond_0
    return-void
.end method
