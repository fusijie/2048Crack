.class final enum Lcom/nextpeer/android/df;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/df;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/df;

.field public static final enum b:Lcom/nextpeer/android/df;

.field private static final synthetic d:[Lcom/nextpeer/android/df;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/df;

    const-string v1, "kNPTablerRoomUpdateStatusUserJoinedRoom"

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/df;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/df;->a:Lcom/nextpeer/android/df;

    new-instance v0, Lcom/nextpeer/android/df;

    const-string v1, "kNPTablerRoomUpdateStatusUserLeftRoom"

    invoke-direct {v0, v1, v2, v4}, Lcom/nextpeer/android/df;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/df;->b:Lcom/nextpeer/android/df;

    new-array v0, v4, [Lcom/nextpeer/android/df;

    sget-object v1, Lcom/nextpeer/android/df;->a:Lcom/nextpeer/android/df;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/df;->b:Lcom/nextpeer/android/df;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nextpeer/android/df;->d:[Lcom/nextpeer/android/df;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/df;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/df;
    .locals 1

    const-class v0, Lcom/nextpeer/android/df;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/df;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/df;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/df;->d:[Lcom/nextpeer/android/df;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/df;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/df;->c:I

    return v0
.end method
