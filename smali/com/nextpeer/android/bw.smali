.class final enum Lcom/nextpeer/android/bw;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/bw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/bw;

.field public static final enum b:Lcom/nextpeer/android/bw;

.field public static final enum c:Lcom/nextpeer/android/bw;

.field public static final enum d:Lcom/nextpeer/android/bw;

.field public static final enum e:Lcom/nextpeer/android/bw;

.field public static final enum f:Lcom/nextpeer/android/bw;

.field private static final synthetic h:[Lcom/nextpeer/android/bw;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeUnknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->a:Lcom/nextpeer/android/bw;

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeMatchInvite"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v5, v2}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->b:Lcom/nextpeer/android/bw;

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeMatchWillExpire"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->c:Lcom/nextpeer/android/bw;

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeMatchExpired"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v2}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->d:Lcom/nextpeer/android/bw;

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeScoreUpdate"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v8, v2}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->e:Lcom/nextpeer/android/bw;

    new-instance v0, Lcom/nextpeer/android/bw;

    const-string v1, "NPPushMessageTypeTournamentResult"

    const/4 v2, 0x5

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/bw;->f:Lcom/nextpeer/android/bw;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nextpeer/android/bw;

    sget-object v1, Lcom/nextpeer/android/bw;->a:Lcom/nextpeer/android/bw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/bw;->b:Lcom/nextpeer/android/bw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/bw;->c:Lcom/nextpeer/android/bw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/bw;->d:Lcom/nextpeer/android/bw;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nextpeer/android/bw;->e:Lcom/nextpeer/android/bw;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/bw;->f:Lcom/nextpeer/android/bw;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/bw;->h:[Lcom/nextpeer/android/bw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/bw;->g:I

    return-void
.end method

.method public static a(I)Lcom/nextpeer/android/bw;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/bw;->values()[Lcom/nextpeer/android/bw;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/nextpeer/android/bw;->a:Lcom/nextpeer/android/bw;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/nextpeer/android/bw;->g:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/bw;
    .locals 1

    const-class v0, Lcom/nextpeer/android/bw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/bw;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/bw;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/bw;->h:[Lcom/nextpeer/android/bw;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/bw;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
