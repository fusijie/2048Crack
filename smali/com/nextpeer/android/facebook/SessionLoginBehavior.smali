.class public final enum Lcom/nextpeer/android/facebook/SessionLoginBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/SessionLoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionLoginBehavior;

.field public static final enum SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

.field public static final enum SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

.field public static final enum SUPPRESS_SSO:Lcom/nextpeer/android/facebook/SessionLoginBehavior;


# instance fields
.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const-string v1, "SSO_WITH_FALLBACK"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const-string v1, "SSO_ONLY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const-string v1, "SUPPRESS_SSO"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    sget-object v1, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    iput-boolean p4, p0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/SessionLoginBehavior;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/SessionLoginBehavior;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final allowsKatanaAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    return v0
.end method

.method final allowsWebViewAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    return v0
.end method
