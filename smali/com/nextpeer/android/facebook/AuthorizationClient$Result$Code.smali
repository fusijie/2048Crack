.class final enum Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

.field public static final enum ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

.field public static final enum SUCCESS:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const-string v1, "CANCEL"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getLoggingValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
