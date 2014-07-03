.class public final enum Lcom/nextpeer/android/dm$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/dm$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/dm$aa;

.field public static final enum b:Lcom/nextpeer/android/dm$aa;

.field public static final enum c:Lcom/nextpeer/android/dm$aa;

.field public static final enum d:Lcom/nextpeer/android/dm$aa;

.field private static final synthetic f:[Lcom/nextpeer/android/dm$aa;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/dm$aa;

    const-string v1, "NPTournamentItemTypeUnknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/nextpeer/android/dm$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dm$aa;->a:Lcom/nextpeer/android/dm$aa;

    new-instance v0, Lcom/nextpeer/android/dm$aa;

    const-string v1, "NPTournamentItemTypeTimeLimit"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/dm$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dm$aa;->b:Lcom/nextpeer/android/dm$aa;

    new-instance v0, Lcom/nextpeer/android/dm$aa;

    const-string v1, "NPTournamentItemTypeHighestScore"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/dm$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dm$aa;->c:Lcom/nextpeer/android/dm$aa;

    new-instance v0, Lcom/nextpeer/android/dm$aa;

    const-string v1, "NPTournamentItemTypeGameControlled"

    invoke-direct {v0, v1, v5, v5}, Lcom/nextpeer/android/dm$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nextpeer/android/dm$aa;

    sget-object v1, Lcom/nextpeer/android/dm$aa;->a:Lcom/nextpeer/android/dm$aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/dm$aa;->b:Lcom/nextpeer/android/dm$aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/dm$aa;->c:Lcom/nextpeer/android/dm$aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nextpeer/android/dm$aa;->f:[Lcom/nextpeer/android/dm$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/dm$aa;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/dm$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/dm$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/dm$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/dm$aa;->f:[Lcom/nextpeer/android/dm$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/dm$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dm$aa;->e:I

    return v0
.end method
