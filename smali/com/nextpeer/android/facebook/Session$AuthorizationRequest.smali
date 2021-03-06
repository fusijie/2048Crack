.class public Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private final loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

.field private statusCallback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

.field private validateSameFbidAsToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$1;-><init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$2;-><init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    return-void
.end method

.method private constructor <init>(Lcom/nextpeer/android/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/SessionLoginBehavior;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$3;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$3;-><init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iput p2, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    invoke-static {p4}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    iput-boolean p5, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iput-object p6, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iput-object p7, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Lcom/nextpeer/android/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method static synthetic access$4(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/SessionLoginBehavior;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method static synthetic access$6(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/SessionDefaultAudience;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthorizationClientRequest()Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;
    .locals 10

    new-instance v8, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;

    invoke-direct {v8, p0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;-><init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-boolean v3, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v5, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    iget-object v6, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;-><init>(Lcom/nextpeer/android/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/nextpeer/android/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method getCallback()Lcom/nextpeer/android/facebook/Session$StatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-object v0
.end method

.method getDefaultAudience()Lcom/nextpeer/android/facebook/SessionDefaultAudience;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method getLoginBehavior()Lcom/nextpeer/android/facebook/SessionLoginBehavior;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method getStartActivityDelegate()Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method getValidateSameFbidAsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-object v0
.end method

.method isLegacy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method setApplicationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-void
.end method

.method setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-object p0
.end method

.method setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    :cond_0
    return-object p0
.end method

.method public setIsLegacy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return-void
.end method

.method setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    :cond_0
    return-object p0
.end method

.method setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method varargs setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    move-result-object v0

    return-object v0
.end method

.method setRequestCode(I)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    :cond_0
    return-object p0
.end method

.method setValidateSameFbidAsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 9

    new-instance v0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-virtual {v4}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v6, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/nextpeer/android/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;)V

    return-object v0
.end method
