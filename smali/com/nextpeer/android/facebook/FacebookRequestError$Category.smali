.class public final enum Lcom/nextpeer/android/facebook/FacebookRequestError$Category;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/FacebookRequestError$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTHENTICATION_REOPEN_SESSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum AUTHENTICATION_RETRY:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum BAD_REQUEST:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum CLIENT:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum OTHER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum SERVER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field public static final enum THROTTLING:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "AUTHENTICATION_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "AUTHENTICATION_REOPEN_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v6}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->SERVER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "THROTTLING"

    invoke-direct {v0, v1, v7}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->OTHER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const-string v1, "CLIENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->CLIENT:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->SERVER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->OTHER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->CLIENT:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/FacebookRequestError$Category;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/FacebookRequestError$Category;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
