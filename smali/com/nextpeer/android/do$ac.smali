.class public final enum Lcom/nextpeer/android/do$ac;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/do$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/do$ac;

.field public static final enum b:Lcom/nextpeer/android/do$ac;

.field public static final enum c:Lcom/nextpeer/android/do$ac;

.field public static final enum d:Lcom/nextpeer/android/do$ac;

.field public static final enum e:Lcom/nextpeer/android/do$ac;

.field public static final enum f:Lcom/nextpeer/android/do$ac;

.field public static final enum g:Lcom/nextpeer/android/do$ac;

.field private static final synthetic i:[Lcom/nextpeer/android/do$ac;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeCreated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeInvited"

    invoke-direct {v0, v1, v4, v5}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->b:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeAccepted"

    invoke-direct {v0, v1, v5, v6}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->c:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypePlayed"

    invoke-direct {v0, v1, v6, v7}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->d:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeQuit"

    invoke-direct {v0, v1, v7, v8}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->e:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeDeclined"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->f:Lcom/nextpeer/android/do$ac;

    new-instance v0, Lcom/nextpeer/android/do$ac;

    const-string v1, "NPTournamentMatchPlayerStatusTypeArchived"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/do$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/do$ac;->g:Lcom/nextpeer/android/do$ac;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nextpeer/android/do$ac;

    const/4 v1, 0x0

    sget-object v2, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nextpeer/android/do$ac;->b:Lcom/nextpeer/android/do$ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/do$ac;->c:Lcom/nextpeer/android/do$ac;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/do$ac;->d:Lcom/nextpeer/android/do$ac;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/do$ac;->e:Lcom/nextpeer/android/do$ac;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nextpeer/android/do$ac;->f:Lcom/nextpeer/android/do$ac;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/nextpeer/android/do$ac;->g:Lcom/nextpeer/android/do$ac;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/do$ac;->i:[Lcom/nextpeer/android/do$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/do$ac;->h:I

    return-void
.end method

.method public static a(I)Lcom/nextpeer/android/do$ac;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/do$ac;->values()[Lcom/nextpeer/android/do$ac;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/nextpeer/android/do$ac;->h:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/do$ac;
    .locals 1

    const-class v0, Lcom/nextpeer/android/do$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/do$ac;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/do$ac;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/do$ac;->i:[Lcom/nextpeer/android/do$ac;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/do$ac;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/do$ac;->h:I

    return v0
.end method
