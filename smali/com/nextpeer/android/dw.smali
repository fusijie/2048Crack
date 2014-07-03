.class final enum Lcom/nextpeer/android/dw;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/dw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/dw;

.field public static final enum b:Lcom/nextpeer/android/dw;

.field public static final enum c:Lcom/nextpeer/android/dw;

.field public static final enum d:Lcom/nextpeer/android/dw;

.field public static final enum e:Lcom/nextpeer/android/dw;

.field public static final enum f:Lcom/nextpeer/android/dw;

.field private static final synthetic h:[Lcom/nextpeer/android/dw;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_Connecting"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_WaitingForRoom"

    invoke-direct {v0, v1, v5, v5}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->b:Lcom/nextpeer/android/dw;

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_EnteredRoom"

    invoke-direct {v0, v1, v6, v6}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->c:Lcom/nextpeer/android/dw;

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_StartedTournament"

    invoke-direct {v0, v1, v7, v7}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_FinishedTournament"

    invoke-direct {v0, v1, v8, v8}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->e:Lcom/nextpeer/android/dw;

    new-instance v0, Lcom/nextpeer/android/dw;

    const-string v1, "NPTournamentServiceState_Disconnected"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/dw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/dw;->b:Lcom/nextpeer/android/dw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/dw;->c:Lcom/nextpeer/android/dw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nextpeer/android/dw;->e:Lcom/nextpeer/android/dw;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/dw;->h:[Lcom/nextpeer/android/dw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/dw;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/dw;
    .locals 1

    const-class v0, Lcom/nextpeer/android/dw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dw;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/dw;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/dw;->h:[Lcom/nextpeer/android/dw;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/dw;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dw;->g:I

    return v0
.end method
