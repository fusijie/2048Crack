.class final enum Lcom/nextpeer/android/ex$ae;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/ex$ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/ex$ae;

.field public static final enum b:Lcom/nextpeer/android/ex$ae;

.field public static final enum c:Lcom/nextpeer/android/ex$ae;

.field public static final enum d:Lcom/nextpeer/android/ex$ae;

.field public static final enum e:Lcom/nextpeer/android/ex$ae;

.field public static final enum f:Lcom/nextpeer/android/ex$ae;

.field public static final enum g:Lcom/nextpeer/android/ex$ae;

.field private static final synthetic h:[Lcom/nextpeer/android/ex$ae;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->a:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "StartLogin"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->b:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "FetchingFriends"

    invoke-direct {v0, v1, v5}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->c:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "LoginFailed"

    invoke-direct {v0, v1, v6}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->d:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "LoginCanceled"

    invoke-direct {v0, v1, v7}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->e:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "FetchedFriends"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->f:Lcom/nextpeer/android/ex$ae;

    new-instance v0, Lcom/nextpeer/android/ex$ae;

    const-string v1, "CreatedMatch"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/ex$ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/ex$ae;->g:Lcom/nextpeer/android/ex$ae;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->a:Lcom/nextpeer/android/ex$ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/ex$ae;->b:Lcom/nextpeer/android/ex$ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/ex$ae;->c:Lcom/nextpeer/android/ex$ae;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/ex$ae;->d:Lcom/nextpeer/android/ex$ae;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/ex$ae;->e:Lcom/nextpeer/android/ex$ae;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/ex$ae;->f:Lcom/nextpeer/android/ex$ae;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nextpeer/android/ex$ae;->g:Lcom/nextpeer/android/ex$ae;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/ex$ae;->h:[Lcom/nextpeer/android/ex$ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/ex$ae;
    .locals 1

    const-class v0, Lcom/nextpeer/android/ex$ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ex$ae;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/ex$ae;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/ex$ae;->h:[Lcom/nextpeer/android/ex$ae;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/ex$ae;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
