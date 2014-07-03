.class public final enum Lcom/nextpeer/android/facebook/AccessTokenSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/AccessTokenSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIENT_TOKEN:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum NONE:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum TEST_USER:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field public static final enum WEB_VIEW:Lcom/nextpeer/android/facebook/AccessTokenSource;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->NONE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v1, v5, v3}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v1, v6, v3}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "WEB_VIEW"

    invoke-direct {v0, v1, v7, v4}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->WEB_VIEW:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "TEST_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->TEST_USER:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    const-string v1, "CLIENT_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/nextpeer/android/facebook/AccessTokenSource;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nextpeer/android/facebook/AccessTokenSource;

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->NONE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->WEB_VIEW:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/facebook/AccessTokenSource;->TEST_USER:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nextpeer/android/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/nextpeer/android/facebook/AccessTokenSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/AccessTokenSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/nextpeer/android/facebook/AccessTokenSource;->canExtendToken:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AccessTokenSource;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/AccessTokenSource;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/AccessTokenSource;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/AccessTokenSource;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final canExtendToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/AccessTokenSource;->canExtendToken:Z

    return v0
.end method
