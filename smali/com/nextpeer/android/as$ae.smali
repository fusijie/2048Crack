.class final enum Lcom/nextpeer/android/as$ae;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/as$ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/as$ae;

.field public static final enum b:Lcom/nextpeer/android/as$ae;

.field private static final synthetic d:[Lcom/nextpeer/android/as$ae;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/as$ae;

    const-string v1, "USER_SUPPORTS_MATCH_PLAY_NOW"

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/as$ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$ae;->a:Lcom/nextpeer/android/as$ae;

    new-instance v0, Lcom/nextpeer/android/as$ae;

    const-string v1, "USER_SUPPORTS_DIRECT_PLAYER_TO_PLAYER"

    invoke-direct {v0, v1, v2, v4}, Lcom/nextpeer/android/as$ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$ae;->b:Lcom/nextpeer/android/as$ae;

    new-array v0, v4, [Lcom/nextpeer/android/as$ae;

    sget-object v1, Lcom/nextpeer/android/as$ae;->a:Lcom/nextpeer/android/as$ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/as$ae;->b:Lcom/nextpeer/android/as$ae;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nextpeer/android/as$ae;->d:[Lcom/nextpeer/android/as$ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/as$ae;->c:I

    return-void
.end method

.method public static varargs a([Lcom/nextpeer/android/as$ae;)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget-object v3, p0, v0

    iget v3, v3, Lcom/nextpeer/android/as$ae;->c:I

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/as$ae;
    .locals 1

    const-class v0, Lcom/nextpeer/android/as$ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/as$ae;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/as$ae;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/as$ae;->d:[Lcom/nextpeer/android/as$ae;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/as$ae;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
