.class Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

.field final errorCode:Ljava/lang/String;

.field final errorMessage:Ljava/lang/String;

.field loggingExtras:Ljava/util/Map;
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

.field final request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

.field final token:Lcom/nextpeer/android/facebook/AccessToken;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    move-object v1, p0

    move-object v4, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    return-object v0
.end method

.method static createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 6

    const-string v0, ": "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->asListNoNulls([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
