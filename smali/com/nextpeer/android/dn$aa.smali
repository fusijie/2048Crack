.class public final enum Lcom/nextpeer/android/dn$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/dn$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/dn$aa;

.field public static final enum b:Lcom/nextpeer/android/dn$aa;

.field public static final enum c:Lcom/nextpeer/android/dn$aa;

.field public static final enum d:Lcom/nextpeer/android/dn$aa;

.field public static final enum e:Lcom/nextpeer/android/dn$aa;

.field private static final synthetic g:[Lcom/nextpeer/android/dn$aa;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/dn$aa;

    const-string v1, "NPTournamentMatchInfoStatusTypeUnknown"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/dn$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dn$aa;->a:Lcom/nextpeer/android/dn$aa;

    new-instance v0, Lcom/nextpeer/android/dn$aa;

    const-string v1, "NPTournamentMatchInfoStatusTypeOpen"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/dn$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    new-instance v0, Lcom/nextpeer/android/dn$aa;

    const-string v1, "NPTournamentMatchInfoStatusTypeClosed"

    invoke-direct {v0, v1, v5, v5}, Lcom/nextpeer/android/dn$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dn$aa;->c:Lcom/nextpeer/android/dn$aa;

    new-instance v0, Lcom/nextpeer/android/dn$aa;

    const-string v1, "NPTournamentMatchInfoStatusTypeExpired"

    invoke-direct {v0, v1, v6, v6}, Lcom/nextpeer/android/dn$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dn$aa;->d:Lcom/nextpeer/android/dn$aa;

    new-instance v0, Lcom/nextpeer/android/dn$aa;

    const-string v1, "NPTournamentMatchInfoStatusTypeArchived"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/nextpeer/android/dn$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dn$aa;->e:Lcom/nextpeer/android/dn$aa;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nextpeer/android/dn$aa;

    sget-object v1, Lcom/nextpeer/android/dn$aa;->a:Lcom/nextpeer/android/dn$aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/dn$aa;->c:Lcom/nextpeer/android/dn$aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/dn$aa;->d:Lcom/nextpeer/android/dn$aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/dn$aa;->e:Lcom/nextpeer/android/dn$aa;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nextpeer/android/dn$aa;->g:[Lcom/nextpeer/android/dn$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/dn$aa;->f:I

    return-void
.end method

.method public static a(I)Lcom/nextpeer/android/dn$aa;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/dn$aa;->values()[Lcom/nextpeer/android/dn$aa;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/nextpeer/android/dn$aa;->a:Lcom/nextpeer/android/dn$aa;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/nextpeer/android/dn$aa;->f:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/dn$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/dn$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/dn$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/dn$aa;->g:[Lcom/nextpeer/android/dn$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/dn$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dn$aa;->f:I

    return v0
.end method
